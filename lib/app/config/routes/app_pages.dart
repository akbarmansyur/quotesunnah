import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:quotesunnah/app/features/home/home_binding.dart';
import 'package:quotesunnah/app/features/home/views/home_screen.dart';
import 'package:quotesunnah/app/features/video_detail/video_detail_binding.dart';
import 'package:quotesunnah/app/features/video_detail/view/video_detail.dart';
import 'package:quotesunnah/app/features/splash/splash_binding.dart';
import 'package:quotesunnah/app/features/splash/view/splash_screen.dart';

part 'app_routes.dart';

/// contains all configuration pages
class AppPages {
  /// when the app is opened, this page will be the first to be shown
  static const initial = Routes.splashScreen;

  static final routes = [
    GetPage(
      name: _Paths.splashScreen,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
      curve: Curves.fastOutSlowIn,
      transitionDuration: const Duration(milliseconds: 600),
      transition: Transition.zoom,
    ),
    GetPage(
      name: _Paths.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
      curve: Curves.fastOutSlowIn,
      transitionDuration: const Duration(milliseconds: 600),
      transition: Transition.zoom,
    ),
    GetPage(
      name: _Paths.videoDetail,
      page: () => const VideoDetailScreen(),
      binding: VideoDetailBinding(),
      curve: Curves.fastOutSlowIn,
      transitionDuration: const Duration(milliseconds: 600),
      transition: Transition.zoom,
    ),
  ];
}
