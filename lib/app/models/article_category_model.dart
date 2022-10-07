// To parse this JSON data, do
//
//     final articleCategory = articleCategoryFromJson(jsonString);

import 'dart:convert';

ArticleCategory articleCategoryFromJson(String str) =>
    ArticleCategory.fromJson(json.decode(str));

String articleCategoryToJson(ArticleCategory data) =>
    json.encode(data.toJson());

class ArticleCategory {
  ArticleCategory({
    required this.totalResults,
    required this.itemsPerPage,
    required this.startIndex,
    required this.entry,
  });

  final int totalResults;
  final int itemsPerPage;
  final int startIndex;
  final List<Entry> entry;

  factory ArticleCategory.fromJson(Map<String, dynamic> json) =>
      ArticleCategory(
        totalResults: json["totalResults"],
        itemsPerPage: json["itemsPerPage"],
        startIndex: json["startIndex"],
        entry: List<Entry>.from(json["entry"].map((x) => Entry.fromJson(x))),
      );

  factory ArticleCategory.empty() => ArticleCategory(
        totalResults: 0,
        itemsPerPage: 0,
        startIndex: 0,
        entry: [],
      );

  Map<String, dynamic> toJson() => {
        "totalResults": totalResults,
        "itemsPerPage": itemsPerPage,
        "startIndex": startIndex,
        "entry": List<dynamic>.from(entry.map((x) => x.toJson())),
      };
}

class Entry {
  Entry({
    required this.id,
    required this.categoryName,
    required this.categoryDesc,
  });

  final int id;
  final String categoryName;
  final String categoryDesc;

  factory Entry.fromJson(Map<String, dynamic> json) => Entry(
        id: json["id"],
        categoryName: json["category_name"],
        categoryDesc: json["category_desc"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category_name": categoryName,
        "category_desc": categoryDesc,
      };
}
