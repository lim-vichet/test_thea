// To parse this JSON data, do
//
//     final getProductModel = getProductModelFromJson(jsonString);

import 'dart:convert';

GetProductModel getProductModelFromJson(String str) => GetProductModel.fromJson(json.decode(str));

String getProductModelToJson(GetProductModel data) => json.encode(data.toJson());

class GetProductModel {
  GetProductModel({
    required this.status,
    required this.result,
  });

  int status;
  List<ProductResult> result;

  factory GetProductModel.fromJson(Map<String, dynamic> json) => GetProductModel(
    status: json["status"],
    result: List<ProductResult>.from(json["result"].map((x) => ProductResult.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "result": List<dynamic>.from(result.map((x) => x.toJson())),
  };
}

class ProductResult {
  ProductResult({
    required this.id,
    required this.image,
    required this.title,
    required this.subtitle,
    this.description,
    this.order,
    required this.status,
    required this.statuse,
  });

  int id;
  String image;
  String title;
  String subtitle;
  dynamic description;
  int? order;
  int status;
  bool statuse = false;


  factory ProductResult.fromJson(Map<String, dynamic> json) => ProductResult(
    id: json["id"],
    image: json["image"],
    title: json["title"],
    subtitle: json["subtitle"],
    description: json["description"],
    order: json["order"],
    status: json["status"],
    statuse: false,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "title": title,
    "subtitle": subtitle,
    "description": description,
    "order": order,
    "status": status,
    "statuse": statuse,
  };
}
