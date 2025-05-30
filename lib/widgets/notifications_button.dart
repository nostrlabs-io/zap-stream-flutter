import 'package:flutter/material.dart';
import 'package:zap_stream_flutter/notifications.dart';
import 'package:zap_stream_flutter/theme.dart';

class NotificationsButtonWidget extends StatefulWidget {
  final String pubkey;

  const NotificationsButtonWidget({super.key, required this.pubkey});

  @override
  State<StatefulWidget> createState() => _NotificationsButtonWidget();
}

class _NotificationsButtonWidget extends State<NotificationsButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: notifications,
      builder: (context, state, _) {
        final isNotified = (state?.notifyKeys ?? []).contains(widget.pubkey);
        return IconButton(
          iconSize: 20,
          onPressed: () async {
            final n = getNotificationService();
            if (n == null) return;

            if (isNotified) {
              await n.removeWatchPubkey(widget.pubkey);
            } else {
              await n.watchPubkey(widget.pubkey, [30311]);
            }
            await notifications.reload();
          },
          style: ButtonStyle(
            padding: WidgetStatePropertyAll(EdgeInsets.all(0)),
            backgroundColor: WidgetStateColor.resolveWith((_) => LAYER_2),
          ),
          icon: Icon(
            isNotified ? Icons.notifications_off : Icons.notification_add,
          ),
        );
      },
    );
  }
}
