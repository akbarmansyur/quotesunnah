import 'package:get/get.dart';
import 'package:quotesunnah/app/config/routes/app_pages.dart';
import 'package:quotesunnah/app/repository/api_repository.dart';
import 'package:quotesunnah/app/repository/local_repository.dart';

class SplashController extends GetxController {
  final ApiRepositoryInterface apiRepositoryInterface;
  final LocalRepositoryInterface localRepositoryInterface;

  SplashController({
    required this.apiRepositoryInterface,
    required this.localRepositoryInterface,
  });

  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.offAllNamed(Routes.home),
    );
    super.onInit();
  }
}
