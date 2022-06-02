class Cupon {
  String? name;
  String? code;
  String? date;
  int? amount;
  int? piece;
  int? discount;
  bool? isSelected;

  Cupon(
      {this.name,
      this.code,
      this.date,
      this.amount,
      this.piece,
      this.discount,
      this.isSelected = false});

  Cupon.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    code = json['code'];
    date = json['date'];
    amount = json['amount'];
    piece = json['piece'];
    discount = json["discount"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['code'] = code;
    data['date'] = date;
    data['amount'] = amount;
    data['piece'] = piece;
    data['discount'] = discount;
    return data;
  }
}
