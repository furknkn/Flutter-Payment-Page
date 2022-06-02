import 'package:flutter/material.dart';
import 'package:ruutcase/core/constants/color-constants.dart';
import 'package:ruutcase/payment/view/payment_body.dart';
import 'package:ruutcase/payment/view/widgets/appbar.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: const SafeArea(
            child: Scaffold(
                backgroundColor: AppColors.softGreyLight,
                appBar: AppBarWidget(),
                body: PaymentBody())),
        onWillPop: () async {
          return false;
        });
  }
}
