import 'package:quotesunnah/app/models/article_category_model.dart';

abstract class ApiRepositoryInterface {
  Future<ArticleCategory> getAllCategory();
}
