// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    required this.status,
    required this.success,
    required this.message,
    required this.userId,
    required this.shopId,
    required this.username,
    required this.email,
    required this.image,
    required this.phone,
    required this.userRole,
    required this.accessToken,
    required this.tokenType,
    required this.expiresAt,
    required this.gender,
  });

  int status;
  int success;
  String message;
  int userId;
  String shopId;
  String username;
  String email;
  String image;
  String phone;
  String userRole;
  String accessToken;
  String tokenType;
  DateTime expiresAt;
  String gender;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    status: json["status"],
    success: json["success"],
    message: json["message"],
    userId: json["user_id"],
    shopId: json["shop_id"],
    username: json["username"],
    email: json["email"],
    image: json["image"]??"",
    phone: json["phone"],
    gender: json["gender"],
    userRole: json["user_role"],
    accessToken: json["access_token"],
    tokenType: json["token_type"],
    expiresAt: DateTime.parse(json["expires_at"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "success": success,
    "message": message,
    "user_id": userId,
    "shop_id": shopId,
    "username": username,
    "email": email,
    "image": image,
    "gender": gender,
    "phone": phone,
    "user_role": userRole,
    "access_token": accessToken,
    "token_type": tokenType,
    "expires_at": expiresAt.toIso8601String(),
  };
}
