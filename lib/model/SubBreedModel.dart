// To parse this JSON data, do
//
//     final subBreed = subBreedFromJson(jsonString);

import 'dart:convert';

SubBreedModel subBreedFromJson(String str) => SubBreedModel.fromJson(json.decode(str));

String subBreedToJson(SubBreedModel data) => json.encode(data.toJson());

class SubBreedModel {
  List<String>? message;
  String? status;

  SubBreedModel({
    this.message,
    this.status,
  });

  factory SubBreedModel.fromJson(Map<String, dynamic> json) => SubBreedModel(
    message: List<String>.from(json["message"].map((x) => x)),
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "message": List<dynamic>.from(message!.map((x) => x)),
    "status": status,
  };
}
