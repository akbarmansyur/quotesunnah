import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:quotesunnah/app/config/themes/app_color.dart';
import 'package:quotesunnah/app/features/shared_components/card/blog_card_1.dart';
import 'package:quotesunnah/app/models/article_models.dart';

class Beranda extends StatelessWidget {
  Beranda({super.key});
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
          child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: SingleChildScrollView(
                child: StaggeredGrid.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 6,
                  children: [
                    StaggeredGridTile.count(
                      crossAxisCellCount: 6,
                      mainAxisCellCount: 6,
                      child: BlogCardStagered2(
                        texSize: 14,
                        article: articleAqidahPopuler[0],
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 3,
                      mainAxisCellCount: 4,
                      child: BlogCardStagered2(
                        texSize: 9,
                        article: articleAqidahPopuler[1],
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 3,
                      mainAxisCellCount: 4,
                      child: BlogCardStagered2(
                        texSize: 9.0,
                        article: articleAqidahPopuler[2],
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 3,
                      mainAxisCellCount: 4,
                      child: BlogCardStagered2(
                        texSize: 9,
                        article: articleAqidahPopuler[1],
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 3,
                      mainAxisCellCount: 4,
                      child: BlogCardStagered2(
                        texSize: 9.0,
                        article: articleAqidahPopuler[2],
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ],
    );
  }
}

class BlogCardStagered1 extends StatelessWidget {
  const BlogCardStagered1({
    Key? key,
    required this.articleAqidahPopuler,
  }) : super(key: key);

  final ArticleModels articleAqidahPopuler;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(articleAqidahPopuler.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 100,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.7),
                  Colors.white.withOpacity(.9),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      articleAqidahPopuler.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BlogCardStagered2 extends StatelessWidget {
  const BlogCardStagered2(
      {super.key, required this.article, required this.texSize});
  final double texSize;
  final ArticleModels article;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        color: AppColor.primary2,
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(article.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 110,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 5,
                      right: 10,
                    ),
                    child: Text(
                      article.title,
                      textAlign: TextAlign.left,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: texSize,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 5,
                      right: 10,
                    ),
                    child: Text(
                      article.content,
                      textAlign: TextAlign.left,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: texSize,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 5, top: 5, right: 10, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          article.date,
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 9,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.comment,
                                  size: 14,
                                  color: Colors.grey,
                                ),
                                Text(
                                  article.comment,
                                  style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontSize: 9,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Icon(
                                  Icons.remove_red_eye_outlined,
                                  size: 14,
                                  color: Colors.grey,
                                ),
                                Text(
                                  article.look,
                                  style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontSize: 9,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            const Icon(
                              Icons.screen_share_outlined,
                              size: 22,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
