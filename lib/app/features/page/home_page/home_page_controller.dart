import 'package:get/get.dart';

class HomePageController extends GetxController {
  var selectedCategory = 0.obs;

  void updateSelectedCategory(index) {
    selectedCategory(index);
  }
}
