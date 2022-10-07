import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:quotesunnah/app/config/routes/app_pages.dart';
import 'package:quotesunnah/app/features/page/video/video_controller.dart';
import 'package:shimmer/shimmer.dart';

class VideoByCategory extends StatelessWidget {
  const VideoByCategory({super.key});

  @override
  Widget build(BuildContext context) {
    VideoController controller = Get.find();
    return Column(
      children: [
        const SizedBox(
          height: 110,
        ),
        Expanded(
          child: Obx(() {
            if (controller.video.isEmpty) {
              return Expanded(
                child: Shimmer.fromColors(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade100,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              );
            }
            return ListView.builder(
                itemCount: controller.video.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          controller.video[index].title,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        child: GestureDetector(
                          onTap: () {
                            controller
                                .updatevideoPlayId(controller.video[index].id);
                            Get.toNamed(Routes.videoDetail);
                          },
                          child: CachedNetworkImage(
                              imageUrl: controller.video[index].thumbnailUrl,
                              placeholder: (context, url) => Shimmer.fromColors(
                                    baseColor: Colors.grey.shade300,
                                    highlightColor: Colors.grey.shade100,
                                    child: Container(
                                      color: Colors.white,
                                    ),
                                  ),
                              fit: BoxFit.cover,
                              errorWidget: (context, url, error) {
                                return const Icon(Icons.error);
                              }),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '10/12/2022',
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 9,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.comment,
                                      size: 14,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      '999',
                                      style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 9,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Icon(
                                      Icons.remove_red_eye_outlined,
                                      size: 14,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      '999',
                                      style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 9,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                const Icon(
                                  Icons.screen_share_outlined,
                                  size: 22,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 20,
                        endIndent: 20,
                        indent: 20,
                      ),
                    ],
                  );
                });
          }),

          // child: SingleChildScrollView(
          //   child: Column(
          //     children: [
          //       SizedBox(
          //         height: 200,
          //         child: Obx(() {
          //           if (controller.video.isEmpty) {
          //             return Image.asset('assets/images/gambar2.png');
          //           }
          //           return CachedNetworkImage(
          //               imageUrl: controller.video[0].thumbnailUrl,
          //               placeholder: (context, url) =>
          //                   const CircularProgressIndicator(),
          //               errorWidget: (context, url, error) {
          //                 print(error);
          //                 print(url);
          //                 return const Icon(Icons.error);
          //               });
          //         }),
          //       ),
          //     ],
          //   ),
          // ),
        ),
      ],
    );
  }
}
