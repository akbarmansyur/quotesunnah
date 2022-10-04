import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:quotesunnah/app/config/routes/app_pages.dart';
import 'package:quotesunnah/app/config/themes/app_color.dart';
import 'package:quotesunnah/app/config/themes/app_text_style.dart';
import 'package:quotesunnah/app/features/home/home_controller.dart';
import 'package:quotesunnah/app/features/home/views/content_navigator.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ContentNavigator(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              textSize: 10,
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 2,
              activeColor: Colors.black87,
              iconSize: 20,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              duration: const Duration(milliseconds: 600),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'Home',
                  textStyle: AppFont.font2.copyWith(color: AppColor.secondary4),
                  iconColor: AppColor.secondary4,
                  iconActiveColor: AppColor.secondary4,
                ),
                GButton(
                  icon: Icons.video_collection_rounded,
                  text: 'Video',
                  textStyle: AppFont.font2.copyWith(color: AppColor.secondary4),
                  iconColor: AppColor.secondary4,
                  iconActiveColor: AppColor.secondary4,
                ),
                GButton(
                  icon: Icons.image_outlined,
                  text: 'Download',
                  textStyle: AppFont.font2.copyWith(color: AppColor.secondary4),
                  iconColor: AppColor.secondary4,
                  iconActiveColor: AppColor.secondary4,
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Account',
                  textStyle: AppFont.font2.copyWith(color: AppColor.secondary4),
                  iconColor: AppColor.secondary4,
                  iconActiveColor: AppColor.secondary4,
                ),
              ],
              selectedIndex: controller.selectedIndex.value,
              onTabChange: (index) {
                controller.updateSelectedIndex(index);
                if (index == 0) {
                  Get.toNamed(Routes.homePage, id: 1);
                }
                if (index == 1) {
                  Get.toNamed(Routes.video, id: 1);
                }
                if (index == 2) {
                  Get.toNamed(Routes.article, id: 1);
                }
                if (index == 3) {
                  Get.toNamed(Routes.homePage, id: 1);
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
