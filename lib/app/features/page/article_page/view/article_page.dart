import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quotesunnah/app/features/page/article_page/article_controller.dart';

class ArticlePage extends GetView<ArticleController> {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ArticlePage')),
        body: const SafeArea(child: Text('ArticleController')));
  }
}
