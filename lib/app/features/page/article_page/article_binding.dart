import 'package:get/get.dart';
import 'package:quotesunnah/app/features/page/article_page/article_controller.dart';

class ArticleBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ArticleController>(() => ArticleController());
  }
}
