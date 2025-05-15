import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/pill.dart';

class GameInfoWidget extends StatelessWidget {
  final GameInfo info;

  const GameInfoWidget({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return PillWidget(
      color: LAYER_2,
      onTap: () {
        context.push("/category/${Uri.encodeComponent(info.id)}", extra: info);
      },
      child: Text(
        info.name,
        style: TextStyle(color: PRIMARY_1, fontWeight: FontWeight.bold),
      ),
    );
  }
}
