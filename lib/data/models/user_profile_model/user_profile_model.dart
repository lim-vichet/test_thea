// To parse this JSON data, do
//
//     final userProfileModel = userProfileModelFromJson(jsonString);

import 'dart:convert';

UserProfileModel userProfileModelFromJson(String str) => UserProfileModel.fromJson(json.decode(str));

String userProfileModelToJson(UserProfileModel data) => json.encode(data.toJson());

class UserProfileModel {
  UserProfileModel({
    required this.status,
    required this.result,
  });

  int status;
  ResultUserProfile result;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) => UserProfileModel(
    status: json["status"],
    result: ResultUserProfile.fromJson(json["result"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "result": result.toJson(),
  };
}

class ResultUserProfile {
  ResultUserProfile({
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

  factory ResultUserProfile.fromJson(Map<String, dynamic> json) => ResultUserProfile(
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
