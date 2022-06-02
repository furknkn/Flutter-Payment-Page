import 'package:flutter/material.dart';
import 'package:ruutcase/payment/model/credit.dart';
import 'package:ruutcase/payment/model/cupon.dart';

class PaymentViewModel with ChangeNotifier {
  List<Credit> lCredit = [
    Credit(
        date: "14/26",
        model: "master",
        number: "1234567891234567",
        type: "Primary Card"),
    Credit(
        date: "15/21",
        model: "master",
        number: "1234567891234444",
        type: "Primary Card"),
    Credit(
        date: "13/28",
        model: "master",
        number: "1234567891233612",
        type: "Company Card")
  ];
  List<Cupon> lCupon = [
    Cupon(
        amount: 300,
        code: "02A226D32BD8",
        date: "22.08.2022",
        name: "ADVERTISER",
        discount: 17,
        piece: 19),
    Cupon(
        amount: 450,
        code: "02A226D32BD8",
        date: "22.08.2022",
        name: "DRIVER",
        discount: 15,
        piece: 6),
    Cupon(
        amount: 200,
        code: "02A226D32BD8",
        date: "22.08.2022",
        name: "SCREEN INVESTOR",
        discount: 10,
        piece: 1)
  ];

  void changeCreditCard(int index) {
    for (var item in lCredit) {
      item.isSelected = false;
    }

    lCredit[index].isSelected = true;
    notifyListeners();
  }

  void changeCupon(int index) {
    for (var item in lCupon) {
      item.isSelected = false;
    }

    lCupon[index].isSelected = true;
    notifyListeners();
  }
}
