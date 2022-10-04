class ArticleModels {
  final String id;
  final String title;
  final String imageUrl;
  final String date;
  final String author;
  final String comment;
  final String content;

  final String look;

  ArticleModels({
    required this.content,
    required this.title,
    required this.id,
    required this.imageUrl,
    required this.date,
    required this.author,
    required this.comment,
    required this.look,
  });
}
