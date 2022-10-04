import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quotesunnah/app/features/page/video/video_controller.dart';
import 'package:quotesunnah/app/features/page/video/view/video_by_category.dart';
import 'package:quotesunnah/app/features/shared_components/header/header.dart';

class VideoPage extends GetView<VideoController> {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categoryVideo = [
      'Berik Said',
    ];
    return Scaffold(
        body: Stack(
      children: [
        Obx(
          () {
            final children = <Widget>[];
            for (var i = 0; i < categoryVideo.length; i++) {
              children.add(const VideoByCategory());
            }
            return IndexedStack(
                index: controller.selectedVideo.value, children: children);
          },
        ),
        Obx(
          () => Header(
            onTap: (index) {
              controller.updateVideo(index);
            },
            labelCategory: categoryVideo,
            selectedIndex: controller.selectedVideo.value,
          ),
        ),
      ],
    ));
  }
}
