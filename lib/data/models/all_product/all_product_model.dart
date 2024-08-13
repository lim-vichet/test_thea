// To parse this JSON data, do
//
//     final allProductModel = allProductModelFromJson(jsonString);

import 'dart:convert';

AllProductModel allProductModelFromJson(String str) => AllProductModel.fromJson(json.decode(str));

String allProductModelToJson(AllProductModel data) => json.encode(data.toJson());

class AllProductModel {
  AllProductModel({
    required this.status,
    required this.total,
    required this.page,
    required this.lastPage,
    required this.showingStart,
    required this.showingEnd,
    required this.resultTotalSearch,
    required this.lastPageSearch,
    required this.result,
  });

  int status;
  int total;
  String page;
  int lastPage;
  int showingStart;
  int showingEnd;
  int resultTotalSearch;
  int lastPageSearch;
  List<ResultAllProduct> result;

  factory AllProductModel.fromJson(Map<String, dynamic> json) => AllProductModel(
    status: json["status"],
    total: json["total"],
    page: json["page"],
    lastPage: json["last_page"],
    showingStart: json["showing_start"],
    showingEnd: json["showing_end"],
    resultTotalSearch: json["result_total_search"],
    lastPageSearch: json["last_page_search"],
    result: List<ResultAllProduct>.from(json["result"].map((x) => ResultAllProduct.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "total": total,
    "page": page,
    "last_page": lastPage,
    "showing_start": showingStart,
    "showing_end": showingEnd,
    "result_total_search": resultTotalSearch,
    "last_page_search": lastPageSearch,
    "result": List<dynamic>.from(result.map((x) => x.toJson())),
  };
}

class ResultAllProduct {
  ResultAllProduct({
    required this.id,
    required this.name,
    required this.shopName,
    required this.image,
    required this.price,
    this.description,
    this.discount,
    required this.discountType,
    this.averageStars,

  });

  int id;
  String name;
  String shopName;
  String image;
  double price;
  String? description;
  int? discount;
  DiscountType discountType;
  double? averageStars;
  bool statuse = false;

  factory ResultAllProduct.fromJson(Map<String, dynamic> json) => ResultAllProduct(
    id: json["id"],
    name: json["name"],
    shopName: json["shop_name"],
    image: json["image"],
    price: json["price"]?.toDouble(),
    description: json["description"],
    discount: json["discount"],
    discountType: discountTypeValues.map[json["discount_type"]]!,
    averageStars: json["averageStars"]?.toDouble(),

  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "shop_name": shopName,
    "image": image,
    "price": price,
    "description": description,
    "discount": discount,
    "discount_type": discountTypeValues.reverse[discountType],
    "averageStars": averageStars,
    "statuse": statuse,
  };
}

enum DiscountType { PERCENT }

final discountTypeValues = EnumValues({
  "percent": DiscountType.PERCENT
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
