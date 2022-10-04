import 'package:flutter/material.dart';
import 'package:quotesunnah/app/models/article_models.dart';

class BlogCard1 extends StatelessWidget {
  const BlogCard1({
    Key? key,
    required this.article,
  }) : super(key: key);
  final ArticleModels article;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 115,
            width: size.width,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400.withOpacity(0.5),
                blurRadius: 3,
                offset: const Offset(1, 1),
              ),
            ]),
            child: Row(
              children: [
                ClipPath(
                  clipper: BC1Clipper(),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(article.imageUrl),
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.low,
                      ),
                    ),
                    width: size.width * 0.35,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: size.width * 0.65 - 20,
                      padding: const EdgeInsets.only(
                          left: 5, top: 7, right: 14, bottom: 5),
                      child: Text(
                        article.title,
                        textAlign: TextAlign.right,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.65 - 20,
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
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class BC1Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.7, size.width);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
