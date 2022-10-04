import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quotesunnah/app/config/themes/app_color.dart';
import 'package:quotesunnah/app/features/splash/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashController controller = Get.find();
    return Scaffold(
      body: Container(
        color: AppColor.splashScreen,
        child: Center(
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
    );
  }
}
