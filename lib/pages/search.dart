import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/widgets/stream_grid.dart';

class SearchPage extends StatefulWidget {
  final String? query;

  const SearchPage({super.key, this.query});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _controller = TextEditingController();
  List<Filter> _filters = [];

  @override
  void initState() {
    super.initState();
    if (widget.query != null && widget.query!.isNotEmpty) {
      _controller.text = widget.query!;
      _updateFilters(widget.query!);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _updateFilters(String query) {
    if (query.isEmpty) {
      setState(() {
        _filters = [];
      });
      return;
    }

    setState(() {
      _filters = [
        Filter(kinds: [30_311], limit: 50, search: query),
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: "Search streams...",
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: _controller.text.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            _controller.clear();
                            _updateFilters("");
                          },
                        )
                      : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onSubmitted: (value) => _updateFilters(value),
              ),
            ),
            if (_filters.isEmpty && _controller.text.isEmpty)
              Container(
                padding: const EdgeInsets.all(32),
                alignment: Alignment.center,
                child: Text(
                  "Enter a search term to find streams",
                  style: TextStyle(color: Colors.grey),
                ),
              )
            else if (_filters.isNotEmpty)
              RxFilter<Nip01Event>(
                Key("search-page:${_controller.text}"),
                filters: _filters,
                builder: (ctx, state) {
                  if (state == null || state.isEmpty) {
                    return Container(
                      padding: const EdgeInsets.all(32),
                      alignment: Alignment.center,
                      child: Text(
                        "No streams found",
                        style: TextStyle(color: Colors.grey),
                      ),
                    );
                  }
                  return StreamGrid(events: state);
                },
              ),
          ],
        ),
      ),
    );
  }
}
