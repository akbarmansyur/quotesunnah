import 'package:get/get.dart';
import 'package:quotesunnah/app/features/page/video/video_controller.dart';

class VideoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VideoController>(() => VideoController());
  }
}
