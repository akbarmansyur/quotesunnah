import 'package:dio/dio.dart';
import 'package:quotesunnah/app/constant/api_path.dart';
import 'package:quotesunnah/app/models/article_category_model.dart';
import 'package:quotesunnah/app/repository/api_repository.dart';

class ApiRepositoryImpl extends ApiRepositoryInterface {
  @override
  Future<ArticleCategory> getAllCategory() async {
    var response = await Dio().get(articleCategoryPath);

    return ArticleCategory.fromJson(response.data);
  }
}
