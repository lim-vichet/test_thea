// To parse this JSON data, do
//
//     final modelStructure1 = modelStructure1FromJson(jsonString);

import 'dart:convert';

ModelStructure1 modelStructure1FromJson(String str) => ModelStructure1.fromJson(json.decode(str));

String modelStructure1ToJson(ModelStructure1 data) => json.encode(data.toJson());

class ModelStructure1 {
  ModelStructure1({
    required this.status,
    required this.result,
  });

  int status;
  List<Result> result;

  factory ModelStructure1.fromJson(Map<String, dynamic> json) => ModelStructure1(
    status: json["status"],
    result: List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "result": List<dynamic>.from(result.map((x) => x.toJson())),
  };
}

class Result {
  Result({
    required this.id,
    required this.image,
    required this.title,
    required this.subtitle,
    this.description,
    this.order,
    required this.status,
  });

  int id;
  String image;
  String title;
  String subtitle;
  dynamic description;
  int? order;
  int status;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["id"],
    image: json["image"],
    title: json["title"],
    subtitle: json["subtitle"],
    description: json["description"],
    order: json["order"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "title": title,
    "subtitle": subtitle,
    "description": description,
    "order": order,
    "status": status,
  };
}
