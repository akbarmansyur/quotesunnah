import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quotesunnah/app/features/page/home_page/home_page_controller.dart';
import 'package:quotesunnah/app/features/shared_components/header/header.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Stack(
            children: [
              IndexedStack(
                  index: controller.selectedCategory.value,
                  children: controller.children),
              Header(
                onTap: (index) {
                  controller.updateSelectedCategory(index);
                },
                labelCategory: controller.labelCategory,
                selectedIndex: controller.selectedCategory.value,
              ),
            ],
          )),
    );
  }
}
