

import 'package:flutter_application_1/entity.dart';

class SuruhModel extends Suruh {
  const SuruhModel(
      {required super.number,
      required super.name,
      required super.revelationType,
      required super.numberOfAyahs});
  factory SuruhModel.fromJson(Map<String, dynamic> json) => SuruhModel(
      number: json["number"],
      name: json["name"],
      revelationType: json["revelationType"],
      numberOfAyahs: json['numberOfAyahs']);
}
