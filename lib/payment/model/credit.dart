class Credit {
  String? type;
  String? model;
  String? number;
  String? date;
  bool? isSelected;

  Credit(
      {this.type, this.model, this.number, this.date, this.isSelected = false});

  Credit.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    model = json['model'];
    number = json['number'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['model'] = model;
    data['number'] = number;
    data['date'] = date;
    return data;
  }
}
