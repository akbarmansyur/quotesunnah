import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:quotesunnah/app/config/themes/app_color.dart';
import 'package:quotesunnah/app/features/video_detail/video_detail_controller.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoDetailScreen extends GetView<VideoDetailController> {
  const VideoDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerScaffold(
      controller: controller.ytubecontroller,
      aspectRatio: 16 / 9,
      builder: (context, player) {
        return Scaffold(
          body: player,
        );
      },
    );
  }
}
