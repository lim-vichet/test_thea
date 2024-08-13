// To parse this JSON data, do
//
//     final postFavoriteModel = postFavoriteModelFromJson(jsonString);

import 'dart:convert';

PostFavoriteModel postFavoriteModelFromJson(String str) => PostFavoriteModel.fromJson(json.decode(str));

String postFavoriteModelToJson(PostFavoriteModel data) => json.encode(data.toJson());

class PostFavoriteModel {
  PostFavoriteModel({
    required this.status,
    required this.result,
  });

  dynamic status;
  dynamic result;

  factory PostFavoriteModel.fromJson(Map<String, dynamic> json) => PostFavoriteModel(
    status: json["status"],
    result: json["result"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "result": result,
  };
}
