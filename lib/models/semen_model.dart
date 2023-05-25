class SemenModel {
  final String? number;
  final String? importDate;
  final String? amount;
  SemenModel({
    this.number,
    this.importDate,
    this.amount,
  });

  factory SemenModel.fromJson(Map<String, dynamic> json) => SemenModel(
        number: json["number"],
        importDate: json["importDate"],
        amount: json["amount"],
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "importDate": importDate,
        "amount": amount,
      };
}
