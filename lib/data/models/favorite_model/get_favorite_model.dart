// To parse this JSON data, do
//
//     final getFavoriteModel = getFavoriteModelFromJson(jsonString);

import 'dart:convert';

GetFavoriteModel getFavoriteModelFromJson(String str) => GetFavoriteModel.fromJson(json.decode(str));

String getFavoriteModelToJson(GetFavoriteModel data) => json.encode(data.toJson());

class GetFavoriteModel {
  GetFavoriteModel({
    required this.status,
    required this.result,
  });

  int status;
  List<ResultFavorite> result;

  factory GetFavoriteModel.fromJson(Map<String, dynamic> json) => GetFavoriteModel(
    status: json["status"],
    result: List<ResultFavorite>.from(json["result"].map((x) => ResultFavorite.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "result": List<dynamic>.from(result.map((x) => x.toJson())),
  };
}

class ResultFavorite {
  ResultFavorite({
    required this.productId,
    required this.name,
    required this.image,
    this.promotion,
    required this.price,
    this.ordered,
    this.stars,
    required this.status,
    required this.shopId,
  });

  String productId;
  String name;
  String image;
  int? promotion;
  double price;
  String? ordered;
  bool status = true;
  dynamic stars;
  int shopId;

  factory ResultFavorite.fromJson(Map<String, dynamic> json) => ResultFavorite(
    productId: json["product_id"],
    name: json["name"],
    image: json["image"]??"",
    promotion: json["promotion"],
    price: json["price"]?.toDouble(),
    ordered: json["ordered"],
    stars: json["stars"],
    shopId: json["shop_id"],
    status: true,
  );

  Map<String, dynamic> toJson() => {
    "product_id": productId,
    "name": name,
    "image": image,
    "promotion": promotion,
    "price": price,
    "ordered": ordered,
    "stars": stars,
    "shop_id": shopId,
    "status": status,
  };
}
