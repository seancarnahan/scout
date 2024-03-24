import 'package:scout/infrastructure/api/zoom_api.dart';

class ZoomService {
  final ZoomApi zoomApi;

  ZoomService(this.zoomApi);

  Future<void> analyzeDataset() async {
    return await zoomApi.analyzeDataset();
  }
}
