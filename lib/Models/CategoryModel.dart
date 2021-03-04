// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromMap(jsonString);

import 'dart:convert';

CategoryModel categoryModelFromMap(String str) =>
    CategoryModel.fromMap(json.decode(str));

String categoryModelToMap(CategoryModel category) =>
    json.encode(category.toMap());

class CategoryModel {
  CategoryModel({
    this.status,
    this.category,
  });

  String status;
  Category category;

  factory CategoryModel.fromMap(Map<String, dynamic> json) => CategoryModel(
        status: json["status"],
        category: Category.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "data": category.toMap(),
      };
}

class Category {
  Category({
    this.interests,
    this.premium,
    this.id,
    this.name,
    this.selection,
    this.date,
    this.slug,
    this.v,
  });

  List<Interest> interests;
  bool premium;
  String id;
  String name;
  String selection;
  DateTime date;
  String slug;
  int v;

  factory Category.fromMap(Map<String, dynamic> json) => Category(
        interests: List<Interest>.from(
            json["interests"].map((x) => Interest.fromMap(x))),
        premium: json["premium"],
        id: json["_id"],
        name: json["name"],
        selection: json["selection"],
        date: DateTime.parse(json["date"]),
        slug: json["slug"],
        v: json["__v"],
      );

  Map<String, dynamic> toMap() => {
        "interests": List<dynamic>.from(interests.map((x) => x.toMap())),
        "premium": premium,
        "_id": id,
        "name": name,
        "selection": selection,
        "date": date.toIso8601String(),
        "slug": slug,
        "__v": v,
      };
}

class Interest {
  Interest({
    this.id,
    this.isPaid,
    this.name,
    this.category,
    this.date,
    this.slug,
    this.v,
  });

  String id;
  bool isPaid;
  String name;
  String category;
  DateTime date;
  String slug;
  int v;

  factory Interest.fromMap(Map<String, dynamic> json) => Interest(
        id: json["_id"],
        isPaid: json["is_paid"],
        name: json["name"],
        category: json["category"],
        date: DateTime.parse(json["date"]),
        slug: json["slug"],
        v: json["__v"],
      );

  Map<String, dynamic> toMap() => {
        "_id": id,
        "is_paid": isPaid,
        "name": name,
        "category": category,
        "date": date.toIso8601String(),
        "slug": slug,
        "__v": v,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
