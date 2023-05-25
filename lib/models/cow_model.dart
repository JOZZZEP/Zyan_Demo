import 'dart:convert';

CowModel userModelFromJson(String str) => CowModel.fromJson(json.decode(str));

String userModelToJson(CowModel data) => json.encode(data.toJson());

class CowModel {
  final String? name;
  final String? cowId;
  final String? farm;
  CowModel({
    this.name,
    this.cowId,
    this.farm,
  });

  factory CowModel.fromJson(Map<String, dynamic> json) => CowModel(
        name: json["name"],
        cowId: json["cowId"],
        farm: json["farm"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "cowId": cowId,
        "farm": farm,
      };
}
