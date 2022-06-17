import 'dart:convert';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:zhasqoldau/features/universities/domain/university.dart';
import 'package:flutter/services.dart' show rootBundle;

class UniversitiesRepository {
  static Future<List<University>> _parseUniversities(String content) async {
    final unicsJson =
        (jsonDecode(content) as List).cast<Map<String, dynamic>>();
    return unicsJson.map<University>(_parseUniversityJson).toList()
      ..sort(
        (a, b) => b.percentageOfEmployment.compareTo(a.percentageOfEmployment),
      );
  }

  Future<List<University>> getUniversities() async {
    final unicsString = await rootBundle.loadString('assets/unics.json');
    final result = await compute(_parseUniversities, unicsString);
    return result;
  }

  static University _parseUniversityJson(Map<String, dynamic> json) {
    return University(
      titleKz: json['name_kz'],
      titleRu: json['name'],
      addressKz: json['address'],
      addressRu: json['address_kz'],
      percentageOfEmployment: double.parse(json['share']),
    );
  }
}
