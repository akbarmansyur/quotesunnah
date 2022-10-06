import 'package:get/get.dart';
import 'package:quotesunnah/app/features/video_detail/video_detail_controller.dart';

class VideoDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VideoDetailController>(() => VideoDetailController());
  }
}
