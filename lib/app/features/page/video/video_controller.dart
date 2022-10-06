import 'package:get/get.dart';
import 'package:quotesunnah/app/data/youtube_api_service.dart';
import 'package:quotesunnah/app/models/youtube_models.dart';

class VideoController extends GetxController {
  var selectedVideo = 0.obs;
  var channel = Channel.empty().obs;
  var video = <Video>[].obs;
  var isLoading = false.obs;

  var videoPlayId = ''.obs;

  void updatevideoPlayId(String id) {
    videoPlayId(id);
  }

  void updateVideo(index) {
    selectedVideo(index);
  }

  void getChannel() async {
    var result = await APIService.instance.fetchChannel();
    channel(result);
    video.addAll(result.videos!);
  }

  void getVideo() async {}

  @override
  void onInit() {
    getChannel();
    super.onInit();
  }
}
