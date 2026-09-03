import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zap_stream_flutter/theme.dart';

class Img extends StatelessWidget {
  final String? url;

  /// Size of the placeholder & error images
  final double? placeholderSize;

  /// Decode the image at this width to save memory
  final int? resize;

  final double? width;
  final double? height;

  const Img({
    super.key,
    required this.url,
    this.placeholderSize,
    this.resize,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    // depend on the pixel ratio only, not every MediaQuery change
    final dpr = MediaQuery.devicePixelRatioOf(context);
    return CachedNetworkImage(
      imageUrl: url ?? "",
      width: width,
      height: height,
      memCacheWidth: resize != null ? (resize! * dpr).round() : null,
      fit: BoxFit.cover,
      placeholderFadeInDuration: Duration.zero,
      fadeOutDuration: Duration.zero,
      placeholder: (ctx, url) =>
          SvgPicture.asset("assets/svg/logo.svg", height: placeholderSize),
      errorWidget: (context, url, error) => SvgPicture.asset(
        "assets/svg/logo.svg",
        height: placeholderSize,
        colorFilter: ColorFilter.mode(WARNING, BlendMode.srcATop),
      ),
    );
  }
}
