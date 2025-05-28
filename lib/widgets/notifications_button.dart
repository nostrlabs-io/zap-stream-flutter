import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:zap_stream_flutter/notifications.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';

class NotificationsButtonWidget extends StatefulWidget {
  final StreamEvent stream;

  const NotificationsButtonWidget({super.key, required this.stream});

  @override
  State<StatefulWidget> createState() => _NotificationsButtonWidget();
}

class _NotificationsButtonWidget extends State<NotificationsButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: () async {
        if (notifications?.authorizationStatus ==
            AuthorizationStatus.authorized) {
          final n = getNotificationService();
          return await n?.getWatchedKeys();
        } else {
          return null;
        }
      }(),
      builder: (context, state) {
        if (state.data == null) {
          return SizedBox.shrink();
        } else {
          final isNotified = (state.data ?? []).contains(
            widget.stream.info.host,
          );
          return IconButton(
            iconSize: 20,
            onPressed: () async {
              final n = getNotificationService();
              if (n == null) return;

              if (isNotified) {
                await n.removeWatchPubkey(widget.stream.info.host);
              } else {
                await n.watchPubkey(widget.stream.info.host, [30311]);
              }
              setState(() {
                // reload widget
              });
            },
            style: ButtonStyle(
              padding: WidgetStatePropertyAll(EdgeInsets.all(0)),
              backgroundColor: WidgetStateColor.resolveWith((_) => LAYER_2),
            ),
            icon: Icon(
              isNotified ? Icons.notifications_off : Icons.notification_add,
            ),
          );
        }
      },
    );
  }
}
