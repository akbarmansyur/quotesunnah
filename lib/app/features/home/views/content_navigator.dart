import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quotesunnah/app/config/routes/app_pages.dart';
import 'package:quotesunnah/app/features/page/article_page/article_binding.dart';
import 'package:quotesunnah/app/features/page/article_page/view/article_page.dart';
import 'package:quotesunnah/app/features/page/home_page/home_page_binding.dart';
import 'package:quotesunnah/app/features/page/home_page/view/home_page.dart';
import 'package:quotesunnah/app/features/page/video/video_binding.dart';
import 'package:quotesunnah/app/features/page/video/view/video_page.dart';

class ContentNavigator extends StatelessWidget {
  const ContentNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(1),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case Routes.homePage:
            return GetPageRoute(
              routeName: Routes.homePage,
              page: () => const HomePage(),
              binding: HomePageBinding(),
              transition: Transition.downToUp,
              curve: Curves.fastOutSlowIn,
              transitionDuration: const Duration(milliseconds: 600),
            );
          case Routes.article:
            return GetPageRoute(
              routeName: Routes.article,
              page: () => const ArticlePage(),
              binding: ArticleBinding(),
              transition: Transition.downToUp,
              curve: Curves.fastOutSlowIn,
              transitionDuration: const Duration(milliseconds: 600),
            );
          case Routes.video:
            return GetPageRoute(
              routeName: Routes.video,
              page: () => const VideoPage(),
              binding: VideoBinding(),
              transition: Transition.downToUp,
              curve: Curves.fastOutSlowIn,
              transitionDuration: const Duration(milliseconds: 600),
            );

          default:
            return GetPageRoute(
              routeName: Routes.homePage,
              page: () => const HomePage(),
              binding: HomePageBinding(),
              transition: Transition.downToUp,
              curve: Curves.fastOutSlowIn,
              transitionDuration: const Duration(milliseconds: 600),
            );
        }
      },
    );
  }
}
