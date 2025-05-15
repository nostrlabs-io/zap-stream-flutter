import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/widgets/category_top_zapped.dart';
import 'package:zap_stream_flutter/widgets/header.dart';
import 'package:zap_stream_flutter/widgets/stream_grid.dart';

class HashtagPage extends StatelessWidget {
  final String tag;

  const HashtagPage({super.key, required this.tag});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(),
            Text(
              "#$tag",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            CategoryTopZapped(tag: tag),
            RxFilter<Nip01Event>(
              Key("tags-page:$tag"),
              filters: [
                Filter(kinds: [30_311], limit: 50, tTags: [tag.toLowerCase()]),
              ],
              builder: (ctx, state) {
                if (state == null) {
                  return SizedBox.shrink();
                } else {
                  return StreamGrid(events: state);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
