part of 'app_pages.dart';

/// used to switch pages
class Routes {
  static const splashScreen = _Paths.splashScreen;
  static const login = _Paths.login;
  static const home = _Paths.home;
  static const homePage = _Paths.homePage;
  static const article = _Paths.article;
  static const video = _Paths.video;
  static const videoDetail = _Paths.videoDetail;
}

/// contains a list of route names.
// made separately to make it easier to manage route naming
class _Paths {
  static const splashScreen = '/splashscreen';
  static const login = '/login';
  static const home = '/home';
  static const homePage = '/home_page';
  static const article = '/article_page';
  static const video = '/video_page';
  static const videoDetail = '/video_detail';

  // Example :
  // static const index = '/';
  // static const splash = '/splash';
  // static const product = '/product';
}
