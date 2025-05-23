import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/widgets/header.dart';
import 'package:zap_stream_flutter/widgets/stream_grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(),
            RxFilter<Nip01Event>(
              Key("home-page"),
              filters: [
                Filter(kinds: [30_311], limit: 100),
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
