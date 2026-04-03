import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/api.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/widgets/header.dart';
import 'package:zap_stream_flutter/widgets/stream_config.dart';
import 'package:zap_stream_flutter/widgets/stream_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final ZapStreamApi _api;
  AccountInfo? _account;

  @override
  void initState() {
    _api = ZapStreamApi.instance();
    _loadAccount();
    super.initState();
  }

  Future<void> _loadAccount() async {
    if (!ndk.accounts.isLoggedIn) return;
    final info = await _api.getAccountInfo();
    if (mounted) {
      setState(() {
        _account = info;
      });
    }
  }

  void _showStreamConfig() {
    if (_account == null) return;
    showModalBottomSheet(
      context: context,
      constraints: BoxConstraints.expand(),
      builder: (context) {
        return StreamConfigWidget(
          api: _api,
          account: _account!,
        );
      },
    ).then((_) {
      _loadAccount();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(
              onConfigureStream: ndk.accounts.isLoggedIn ? _showStreamConfig : null,
            ),
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
