import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

class ImageDownloader {
  /// Download image from remote url and return locally saved path
  static Future<String?> downloadAndReturnLocalPath(
      String remoteImageUrl) async {
    final savePath =
        '${(await getTemporaryDirectory()).path}/${DateTime.now().millisecondsSinceEpoch}.jpg';
    await Dio().downloadUri(Uri.parse(remoteImageUrl), savePath);

    return savePath;
  }
}
