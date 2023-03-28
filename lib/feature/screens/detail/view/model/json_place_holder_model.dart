// To parse this JSON data, do
//
//     final jsonPlaceholderModel = jsonPlaceholderModelFromJson(jsonString);

import 'dart:convert';

JsonPlaceholderModel jsonPlaceholderModelFromJson(String str) => JsonPlaceholderModel.fromJson(json.decode(str));

String jsonPlaceholderModelToJson(JsonPlaceholderModel data) => json.encode(data.toJson());

class JsonPlaceholderModel {
  JsonPlaceholderModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory JsonPlaceholderModel.fromJson(Map<String, dynamic> json) => JsonPlaceholderModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
