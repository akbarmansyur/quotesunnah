import 'package:get/get.dart';
import 'package:quotesunnah/app/features/home/home_binding.dart';
import 'package:quotesunnah/app/features/home/views/home_screen.dart';
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
    ),
    GetPage(
      name: _Paths.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
