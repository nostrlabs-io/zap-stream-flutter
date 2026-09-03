import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/category_top_zapped.dart';
import 'package:zap_stream_flutter/widgets/header.dart';
import 'package:zap_stream_flutter/widgets/stream_grid.dart';

class HashtagPage extends StatelessWidget {
  final String tag;

  const HashtagPage({super.key, required this.tag});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.all(5.0),
          sliver: SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderWidget(),
                Text(
                  "#$tag",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                CategoryTopZapped(tag: tag),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          sliver: RxFilter<StreamEvent>(
            Key("tags-page:$tag"),
            filters: [
              Filter(kinds: [30_311], limit: 100, tTags: [tag.toLowerCase()]),
            ],
            mapper: (e) => StreamEvent(e),
            builder: (ctx, state) {
              return StreamGrid(events: state ?? const []);
            },
          ),
        ),
      ],
    );
  }
}
