import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quotesunnah/app/features/page/home_page/home_page_controller.dart';
import 'package:quotesunnah/app/features/page/home_page/view/beranda.dart';
import 'package:quotesunnah/app/features/page/home_page/view/by_category.dart';
import 'package:quotesunnah/app/features/shared_components/card/blog_card_1.dart';
import 'package:quotesunnah/app/features/shared_components/card/blog_card_2.dart';
import 'package:quotesunnah/app/features/shared_components/header/header.dart';
import 'package:quotesunnah/app/features/shared_components/title/head_title.dart';
import 'package:quotesunnah/app/models/article_models.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> category = [
      'Populer',
      'Tauhid',
      'Aqidah',
      'Manhaj',
      'Fiqh',
      'Sejarah',
    ];
    return Scaffold(
        body: Stack(
      children: [
        Obx(
          () {
            final children = <Widget>[];
            for (var i = 0; i < category.length - 1; i++) {
              if (i == 0) {
                children.add(Beranda());
              } else {
                children.add(ByCategory());
              }
            }
            return IndexedStack(
                index: controller.selectedCategory.value, children: children);
          },
        ),
        Obx(
          () => Header(
            onTap: (index) {
              controller.updateSelectedCategory(index);
            },
            labelCategory: category,
            selectedIndex: controller.selectedCategory.value,
          ),
        ),
      ],
    ));
  }
}
