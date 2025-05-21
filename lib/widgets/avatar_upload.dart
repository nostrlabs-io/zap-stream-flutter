import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/theme.dart';

class AvatarUpload extends StatefulWidget {
  final String? avatar;
  final Future<void> Function()? onUploadStart;
  final void Function(String)? onUpload;

  const AvatarUpload({
    super.key,
    this.onUpload,
    this.onUploadStart,
    this.avatar,
  });

  @override
  State<StatefulWidget> createState() => _AvatarUpload();
}

class _AvatarUpload extends State<AvatarUpload> {
  String? _avatar;
  String? _error;
  bool _loading = false;

  @override
  void initState() {
    _avatar = widget.avatar;
    super.initState();
  }

  Future<String?> _uploadAvatar() async {
    if (widget.onUploadStart != null) {
      await widget.onUploadStart!();
    }
    final file = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (file != null) {
      final upload = await ndk.blossom.uploadBlob(
        serverUrls: ["https://nostr.download"],
        data: await file.readAsBytes(),
      );
      final imgUrl = upload.first.descriptor!.url;
      setState(() {
        _avatar = imgUrl;
      });
      return imgUrl;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _loading = true;
        });
        _uploadAvatar()
            .then((u) {
              setState(() {
                _loading = false;
              });
              if (widget.onUpload != null && u != null) {
                widget.onUpload!(u);
              }
            })
            .catchError((e) {
              setState(() {
                _error = e is String ? e : e.toString();
                _loading = false;
              });
            });
      },
      child: Column(
        spacing: 8,
        children: [
          Container(
            width: 200,
            height: 200,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(200)),
              color: Color.fromARGB(100, 50, 50, 50),
            ),
            child:
                _avatar == null
                    ? Center(
                      child:
                          _loading
                              ? CircularProgressIndicator()
                              : Text(t.upload_avatar),
                    )
                    : CachedNetworkImage(imageUrl: _avatar!),
          ),
          if (_error != null)
            Text(
              _error!,
              style: TextStyle(color: WARNING, fontWeight: FontWeight.bold),
            ),
        ],
      ),
    );
  }
}
