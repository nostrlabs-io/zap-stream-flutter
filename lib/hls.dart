/// Only HLS can be handed to the video player: the `streaming` tags of a live
/// event also carry non-HLS egress URLs (MoQ), which it cannot open.
bool isHlsUrl(String url) {
  final u = Uri.tryParse(url);
  if (u == null) return false;
  if (u.scheme != "http" && u.scheme != "https") return false;
  return u.path.endsWith(".m3u8");
}
