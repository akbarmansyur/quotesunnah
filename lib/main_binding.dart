import 'package:get/get.dart';
import 'package:quotesunnah/app/data/api_repository_impl.dart';
import 'package:quotesunnah/app/data/local_repository_impl.dart';
import 'package:quotesunnah/app/repository/api_repository.dart';
import 'package:quotesunnah/app/repository/local_repository.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApiRepositoryInterface>(() => ApiRepositoryImpl());
    Get.lazyPut<LocalRepositoryInterface>(() => LocalRepositoriyImpl());
  }
}
