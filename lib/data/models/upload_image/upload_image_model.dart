// To parse this JSON data, do
//
//     final uploadImageModel = uploadImageModelFromJson(jsonString);

import 'dart:convert';

UploadImageModel uploadImageModelFromJson(String str) => UploadImageModel.fromJson(json.decode(str));

String uploadImageModelToJson(UploadImageModel data) => json.encode(data.toJson());

class UploadImageModel {
  UploadImageModel({
    required this.status,
    required this.result,
  });

  int status;
  ResultUploadImage result;

  factory UploadImageModel.fromJson(Map<String, dynamic> json) => UploadImageModel(
    status: json["status"],
    result: ResultUploadImage.fromJson(json["result"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "result": result.toJson(),
  };
}

class ResultUploadImage {
  ResultUploadImage({
    required this.name,
    required this.image,
    required this.email,
    this.address,
    required this.phone,
    required this.userRole,
    required this.gender,
  });

  String name;
  String image;
  String email;
  dynamic address;
  String phone;
  String userRole;
  String gender;

  factory ResultUploadImage.fromJson(Map<String, dynamic> json) => ResultUploadImage(
    name: json["name"]??"",
    image: json["image"]??"",
    email: json["email"]??"",
    address: json["address"]??"",
    phone: json["phone"],
    userRole: json["user_role"],
    gender: json["gender"]??"",
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "image": image,
    "email": email,
    "address": address,
    "phone": phone,
    "user_role": userRole,
    "gender": gender,
  };
}
