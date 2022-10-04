import 'package:flutter/material.dart';
import 'package:quotesunnah/app/features/shared_components/card/blog_card_1.dart';
import 'package:quotesunnah/app/features/shared_components/card/blog_card_2.dart';
import 'package:quotesunnah/app/features/shared_components/title/head_title.dart';
import 'package:quotesunnah/app/models/article_models.dart';

class ByCategory extends StatelessWidget {
  ByCategory({super.key});
  final List<ArticleModels> articleAqidahPopuler = [
    ArticleModels(
        content:
            'gdgfhdgh fgfgfrdgfsgf hdgfdxgnfbvcxdgzfd dhdfgfg fgdfgfgf fgfgfg',
        title: 'article1',
        id: '1',
        imageUrl: 'assets/images/gambar1.jpg',
        date: '10/11/2020',
        author: 'admin',
        comment: '999',
        look: '123'),
    ArticleModels(
        content:
            'gdgfhdgh fgfgfrdgfsgf hdgfdxgnfbvcxdgzfd dhdfgfg fgdfgfgf fgfgfg',
        title: 'ini adalah article ke 2',
        id: '1',
        imageUrl: 'assets/images/gambar2.png',
        date: '11/11/2020',
        author: 'nande',
        comment: '888',
        look: '321'),
    ArticleModels(
        content:
            'gdgfhdgh fgfgfrdgfsgf hdgfdxgnfbvcxdgzfd dhdfgfg fgdfgfgf fgfgfg',
        title: 'Kalo yamg ini article ke 3',
        id: '1',
        imageUrl: 'assets/images/gambar3.png',
        date: '11/11/2020',
        author: 'ahma',
        comment: '777',
        look: '132'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return BlogCard1(article: articleAqidahPopuler[index]);
              },
              separatorBuilder: (context, index) {
                return BlogCard2(article: articleAqidahPopuler[index]);
              },
              itemCount: 3),
        ),
      ],
    );
  }
}
