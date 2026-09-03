import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/const.dart';

/// Reactive filter which builds the widget with a snapshot of the data
class RxFilter<T> extends StatefulWidget {
  final List<Filter> filters;
  final bool leaveOpen;
  final Widget Function(BuildContext, List<T>?) builder;
  final T Function(Nip01Event)? mapper;
  final List<String>? relays;

  const RxFilter(
    Key? key, {
    required this.filters,
    this.leaveOpen = false,
    required this.builder,
    this.mapper,
    this.relays,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RxFilter<T>();
}

class _RxFilter<T> extends State<RxFilter<T>> {
  late RxFilterState<T> _state;

  @override
  void initState() {
    _state = _subscribe();
    super.initState();
  }

  RxFilterState<T> _subscribe() {
    return RxFilterState<T>(
      filters: widget.filters,
      leaveOpen: widget.leaveOpen,
      mapper: widget.mapper,
      relays: widget.relays,
    );
  }

  /// The subscription is opened once; a parent handing us different filters
  /// (search, or a stream whose relay list changed) used to be silently
  /// ignored and kept showing the old request's data.
  @override
  void didUpdateWidget(covariant RxFilter<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!_sameRequest(oldWidget, widget)) {
      _state.dispose();
      _state = _subscribe();
    }
  }

  static bool _sameRequest(RxFilter a, RxFilter b) {
    if (a.leaveOpen != b.leaveOpen || !listEquals(a.relays, b.relays)) {
      return false;
    }
    if (a.filters.length != b.filters.length) return false;
    for (var i = 0; i < a.filters.length; i++) {
      if (jsonEncode(a.filters[i].toMap()) !=
          jsonEncode(b.filters[i].toMap())) {
        return false;
      }
    }
    return true;
  }

  @override
  void dispose() {
    _state.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _state,
      builder: (context, state, _) {
        return widget.builder(context, state);
      },
    );
  }
}

class RxFilterState<T> extends ChangeNotifier
    implements ValueListenable<List<T>?> {
  /// Delay before the first paint once data starts arriving. Long enough to
  /// collect a cache read into one frame, short enough not to be noticed.
  static const _firstFlush = Duration(milliseconds: 100);

  /// Maximum rebuild rate once something is on screen. A busy chat can push
  /// tens of events a second and the builders re-sort the whole window.
  static const _steadyFlush = Duration(milliseconds: 300);

  final List<Filter> filters;
  final bool leaveOpen;
  final T Function(Nip01Event)? mapper;
  final List<String>? relays;

  /// Insertion-ordered so consumers see a stable sequence between updates;
  /// an unordered map lets equal-timestamp events swap places on every
  /// notification and the list they render jumps around.
  LinkedHashMap<String, (int, T)>? _events;
  List<T>? _snapshot;
  Timer? _flushTimer;
  bool _dirty = false;
  bool _hasFlushed = false;
  late final NdkResponse _response;
  late final StreamSubscription _listener;
  bool _disposed = false;

  RxFilterState({
    required this.filters,
    this.leaveOpen = false,
    this.mapper,
    this.relays,
  }) {
    _readCache();
    developer.log("RX:SEDNING $filters");
    // Never touch `_response.future`: for a subscription it is
    // `stream.toList()`, which never completes and keeps every event the
    // relays ever send in memory for as long as the screen is open.
    _response = ndk.requests.subscription(
      // ignore: deprecated_member_use
      filters: filters,
      explicitRelays: relays,
      cacheRead: true,
      cacheWrite: true,
    );
    _listener = _response.stream.listen(
      _onEvent,
      onError: (e) {
        developer.log("RX:ERROR $e");
      },
    );
  }

  /// ndk only serves cache hits for filters with authors or ids, so a plain
  /// kind or tag filter (the home list, a chat) never painted from disk.
  /// Read those ourselves; relay copies of the same events dedupe on insert.
  Future<void> _readCache() async {
    for (final f in filters) {
      if (f.authors != null || f.ids != null) continue;
      if (f.kinds == null && f.tags == null) continue;
      try {
        final cached = await ndkCache.loadEvents(
          kinds: f.kinds,
          tags: f.tags?.map((k, v) => MapEntry(k.replaceFirst("#", ""), v)),
          since: f.since,
          until: f.until,
          search: f.search,
          limit: f.limit,
        );
        if (_disposed) return;
        developer.log("RX:CACHE ${cached.length} events for $f");
        cached.forEach(_onEvent);
      } catch (e) {
        developer.log("RX:CACHE ERROR $e");
      }
    }
  }

  void _onEvent(Nip01Event ev) {
    if (!_replaceInto(ev)) return;
    _dirty = true;
    _flushTimer ??= Timer(_hasFlushed ? _steadyFlush : _firstFlush, _flush);
  }

  void _flush() {
    _flushTimer = null;
    if (!_dirty) return;
    _dirty = false;
    _hasFlushed = true;
    _snapshot = null;
    notifyListeners();
  }

  /// Insert a locally created event and paint it straight away
  void insertEvent(Nip01Event ev) {
    if (_replaceInto(ev)) {
      _dirty = true;
      _flush();
    }
  }

  bool _replaceInto(Nip01Event ev) {
    final evKey = _eventKey(ev);
    _events ??= LinkedHashMap();
    final existing = _events![evKey];
    if (existing == null || existing.$1 < ev.createdAt) {
      _events![evKey] = (ev.createdAt, mapper != null ? mapper!(ev) : ev as T);
      return true;
    }
    return false;
  }

  String _eventKey(Nip01Event ev) {
    if ([0, 3].contains(ev.kind) || (ev.kind >= 10000 && ev.kind < 20000)) {
      return "${ev.kind}:${ev.pubKey}";
    } else if (ev.kind >= 30000 && ev.kind < 40000) {
      return "${ev.kind}:${ev.pubKey}:${ev.getDtag()}";
    } else {
      return ev.id;
    }
  }

  @override
  List<T>? get value {
    final events = _events;
    if (events == null) return null;
    return _snapshot ??= List<T>.unmodifiable(events.values.map((v) => v.$2));
  }

  @override
  void dispose() {
    developer.log("RX:CLOSING $filters");
    _disposed = true;
    _flushTimer?.cancel();
    _listener.cancel();
    ndk.requests.closeSubscription(_response.requestId);
    super.dispose();
  }
}

/// An async filter loader into [RxFilter]
class RxFutureFilter<T> extends StatefulWidget {
  final Future<List<Filter>> Function() filterBuilder;
  final bool leaveOpen;
  final Widget Function(BuildContext, List<T>?) builder;
  final Widget? loadingWidget;
  final T Function(Nip01Event)? mapper;

  const RxFutureFilter(
    Key key, {
    required this.filterBuilder,
    required this.builder,
    this.mapper,
    this.leaveOpen = true,
    this.loadingWidget,
  }) : super(key: key);

  @override
  State<RxFutureFilter<T>> createState() => _RxFutureFilter<T>();
}

class _RxFutureFilter<T> extends State<RxFutureFilter<T>> {
  // resolved once; building the future inside build() re-ran it on every
  // rebuild and re-created the subscription underneath
  late final Future<List<Filter>> _filters = widget.filterBuilder();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Filter>>(
      future: _filters,
      builder: (ctx, data) {
        if (data.hasData) {
          return RxFilter<T>(
            widget.key,
            filters: data.data!,
            mapper: widget.mapper,
            leaveOpen: widget.leaveOpen,
            builder: widget.builder,
          );
        } else {
          return widget.loadingWidget ?? SizedBox.shrink();
        }
      },
    );
  }
}
