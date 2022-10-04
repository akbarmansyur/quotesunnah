import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:quotesunnah/app/features/page/video/video_controller.dart';

class VideoByCategory extends StatelessWidget {
  const VideoByCategory({super.key});

  @override
  Widget build(BuildContext context) {
    VideoController controller = Get.find();
    return Column(
      children: [
        const SizedBox(
          height: 80,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: Obx(() {
                    if (controller.video.isEmpty) {
                      return Image.asset('assets/images/gambar2.png');
                    }
                    return CachedNetworkImage(
                        imageUrl: controller.video[0].thumbnailUrl,
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) {
                          print(error);
                          print(url);
                          return const Icon(Icons.error);
                        });
                  }),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
