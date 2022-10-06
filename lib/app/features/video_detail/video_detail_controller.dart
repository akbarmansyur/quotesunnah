import 'package:get/get.dart';
import 'package:quotesunnah/app/config/themes/app_color.dart';
import 'package:quotesunnah/app/features/page/video/video_controller.dart';

import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoDetailController extends GetxController {
  final VideoController vC = Get.find();
  final YoutubePlayerController ytubecontroller = YoutubePlayerController(
    params: YoutubePlayerParams(
      showFullscreenButton: true,
    ),
  );

  @override
  void onInit() {
    ytubecontroller.onInit = () {
      ytubecontroller.enterFullScreen();
      ytubecontroller.loadVideoById(videoId: vC.videoPlayId.value);
      ytubecontroller.playVideo();
    };
    super.onInit();
  }

  @override
  void onClose() {
    ytubecontroller.close();
    super.onClose();
  }
}
