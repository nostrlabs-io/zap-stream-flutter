import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/api.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/header.dart';
import 'package:zap_stream_flutter/widgets/stream_config.dart';
import 'package:zap_stream_flutter/widgets/stream_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ZapStreamApi? _api;
  AccountInfo? _account;

  /// Only streams touched in the last month are worth pulling; the home page
  /// hides ended streams anyway, so older ones were fetched, verified and
  /// then thrown away on every launch.
  static const _lookback = Duration(days: 30);

  /// Fixed for the life of the page: a moving `since` would read as a new
  /// filter on every rebuild and re-open the subscription.
  final int _since =
      DateTime.now().subtract(_lookback).millisecondsSinceEpoch ~/ 1000;

  @override
  void initState() {
    super.initState();
    loginData.addListener(_onLoginChanged);
    _loadAccount();
  }

  @override
  void dispose() {
    loginData.removeListener(_onLoginChanged);
    super.dispose();
  }

  /// The home page is the root route and stays mounted across login, so the
  /// account has to be reloaded when the login changes, not just once at
  /// mount. The API client is rebuilt too, as it holds the signer of whoever
  /// was logged in when it was created.
  void _onLoginChanged() {
    if (!mounted) return;
    setState(() {
      _api = null;
      _account = null;
    });
    _loadAccount();
  }

  Future<void> _loadAccount() async {
    if (!ndk.accounts.isLoggedIn) return;
    final api = _api ??= ZapStreamApi.instance();
    try {
      final info = await api.getAccountInfo();
      if (mounted && _api == api) {
        setState(() {
          _account = info;
        });
      }
    } catch (e) {
      developer.log("Failed to load account: $e");
    }
  }

  void _showStreamConfig() {
    if (_account == null || _api == null) return;
    showModalBottomSheet(
      context: context,
      constraints: BoxConstraints.expand(),
      builder: (context) {
        return StreamConfigWidget(api: _api!, account: _account!);
      },
    ).then((_) {
      _loadAccount();
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.all(5.0),
          sliver: SliverToBoxAdapter(
            child: HeaderWidget(
              onConfigureStream: ndk.accounts.isLoggedIn
                  ? _showStreamConfig
                  : null,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          sliver: RxFilter<StreamEvent>(
            Key("home-page"),
            filters: [
              Filter(kinds: [30_311], limit: 100, since: _since),
            ],
            mapper: (e) => StreamEvent(e),
            builder: (ctx, state) {
              if (state == null) {
                return SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(32),
                    child: Center(
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
                );
              }
              return StreamGrid(events: state);
            },
          ),
        ),
      ],
    );
  }
}
