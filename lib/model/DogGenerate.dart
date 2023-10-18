// To parse this JSON data, do
//
//     final subBreed = subBreedFromJson(jsonString);

import 'dart:convert';

DogGenerate subBreedFromJson(String str) => DogGenerate.fromJson(json.decode(str));

String subBreedToJson(DogGenerate data) => json.encode(data.toJson());

class DogGenerate {
  String? message;
  String? status;

  DogGenerate({
    this.message,
    this.status,
  });

  factory DogGenerate.fromJson(Map<String, dynamic> json) => DogGenerate(
    message: json["message"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "status": status,
  };
}
