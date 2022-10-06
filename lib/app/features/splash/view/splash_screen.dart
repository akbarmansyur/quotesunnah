import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quotesunnah/app/config/themes/app_color.dart';
import 'package:quotesunnah/app/config/themes/app_text_style.dart';
import 'package:quotesunnah/app/features/splash/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashController controller = Get.find();
    return Scaffold(
      body: Container(
        color: AppColor.splashScreen,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 200,
            ),
            Center(
              child: Text(
                'Quotesunnah.com © ${DateTime.now().year.toString()}',
                style: AppFont.fontBrand.copyWith(
                  fontSize: 20,
                ),
              ),
            ),
            Center(
              child: Text(
                'Nyanyot developer\nbuild version (demo non_stable 0.1.2)',
                textAlign: TextAlign.center,
                style: AppFont.font3.copyWith(
                  fontSize: 10,
                  color: Colors.blueGrey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
