import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quotesunnah/app/features/page/home_page/view/beranda.dart';
import 'package:quotesunnah/app/features/page/home_page/view/by_category.dart';
import 'package:quotesunnah/app/models/article_category_model.dart';
import 'package:quotesunnah/app/repository/api_repository.dart';

class HomePageController extends GetxController {
  final ApiRepositoryInterface apiRepository;

  HomePageController({required this.apiRepository});

  var selectedCategory = 0.obs;
  var labelCategory = <String>[
    'Beranda',
  ].obs;

  var children = <Widget>[].obs;

  var articleCategory = ArticleCategory.empty().obs;

  void updateSelectedCategory(index) {
    selectedCategory(index);
  }

  Future<void> getAllCategory() async {
    var data = await apiRepository.getAllCategory();
    data.entry.removeAt(0);
    for (var element in data.entry) {
      labelCategory.add(element.categoryName);
    }
    articleCategory.value = data;
  }

  addWidget() {
    for (var i = 0; i < labelCategory.length; i++) {
      if (i == 0) {
        children.add(Beranda());
      } else {
        children.add(ByCategory());
      }
    }
  }

  @override
  void onInit() async {
    await getAllCategory();
    addWidget();
    super.onInit();
  }
}
