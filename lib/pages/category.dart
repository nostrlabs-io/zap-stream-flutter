import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/imgproxy.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/category_top_zapped.dart';
import 'package:zap_stream_flutter/widgets/header.dart';
import 'package:zap_stream_flutter/widgets/pill.dart';
import 'package:zap_stream_flutter/widgets/stream_grid.dart';

class CategoryPage extends StatelessWidget {
  final String category;
  final GameInfo? info;

  const CategoryPage({super.key, required this.category, required this.info});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(),
            Row(
              spacing: 8,
              children: [
                if (info?.coverImage != null)
                  Container(
                    clipBehavior: Clip.antiAlias,
                    constraints: BoxConstraints(maxHeight: 200),
                    decoration: BoxDecoration(
                      borderRadius: DEFAULT_BR,
                      color: LAYER_1,
                    ),
                    child:
                        info!.coverImage!.startsWith("assets/")
                            ? Image.asset(
                              info!.coverImage!,
                              fit: BoxFit.contain,
                            )
                            : ProxyImg(url: info!.coverImage!),
                  ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8,
                    children: [
                      Text(
                        info?.name ?? category,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (info?.genres != null)
                        Row(
                          spacing: 4,
                          children:
                              info!.genres
                                  .map(
                                    (g) => PillWidget(
                                      color: LAYER_1,
                                      child: Text(
                                        g,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                        ),
                      CategoryTopZapped(tag: category),
                    ],
                  ),
                ),
              ],
            ),
            RxFilter<Nip01Event>(
              Key("category-page:$category"),
              filters: [
                Filter(
                  kinds: [30_311],
                  limit: 100,
                  tTags: [category.toLowerCase()],
                ),
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
