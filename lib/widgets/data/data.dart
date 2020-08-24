// To parse this JSON data, do
//
//     final cases = casesFromJson(jsonString);

import 'dart:convert';

List<Cases> casesFromJson(String str) =>
    List<Cases>.from(json.decode(str).map((x) => Cases.fromJson(x)));

String casesToJson(List<Cases> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Cases {
  Cases({
    this.countryRegion,
    this.confirmed,
    this.recovered,
    this.deaths,
    this.active,
  });

  String countryRegion;
  int confirmed;
  int recovered;
  int deaths;
  int active;

  factory Cases.fromJson(Map<String, dynamic> json) => Cases(
        countryRegion: json["countryRegion"],
        confirmed: json["confirmed"],
        recovered: json["recovered"],
        deaths: json["deaths"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "countryRegion": countryRegion,
        "confirmed": confirmed,
        "recovered": recovered,
        "deaths": deaths,
        "active": active,
      };
}
