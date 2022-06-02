import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ruutcase/core/constants/color-constants.dart';
import 'package:ruutcase/core/utility/screen-size.dart';
import 'package:ruutcase/payment/view/widgets/add-element.dart';
import 'package:ruutcase/payment/view/widgets/balance-card.dart';
import 'package:ruutcase/payment/view/widgets/credit-card.dart';
import 'package:ruutcase/payment/view/widgets/cupon-card.dart';
import 'package:ruutcase/payment/view/widgets/heder.dart';
import 'package:ruutcase/payment/view/widgets/selected-block.dart';
import 'package:ruutcase/payment/viewmodel/payment_viewmodel.dart';

class PaymentBody extends StatelessWidget {
  const PaymentBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: ScreenSize().getWidthPercent(.042)),
      child: ListView(
        children: [
          SizedBox(
            height: ScreenSize().getWidthPercent(.08),
          ),
          const HeaderWidget(),
          SizedBox(
            height: ScreenSize().getWidthPercent(.08),
          ),
          SizedBox(
              width: double.infinity,
              height: ScreenSize().getWidthPercent(.084),
              child: const SelectedBodyWidget()),
          SizedBox(
            height: ScreenSize().getWidthPercent(.053),
          ),
          const BalanceCardWidget(),
          SizedBox(
            height: ScreenSize().getWidthPercent(.053),
          ),
          const AddElementWidget(name: "Credit Cards"),
          SizedBox(
            height: ScreenSize().getWidthPercent(.037),
          ),
          Consumer<PaymentViewModel>(
            builder: (context, paymentViewModel, child) => CreditCardWidget(
                lCredit: paymentViewModel.lCredit,
                onTapCredit: (index) {
                  paymentViewModel.changeCreditCard(index);
                }),
          ),
          SizedBox(
            height: ScreenSize().getWidthPercent(.037),
          ),
          const AddElementWidget(name: "Promotion Codes"),
          SizedBox(
            height: ScreenSize().getWidthPercent(.037),
          ),
          Consumer<PaymentViewModel>(
            builder: (context, paymentViewModel, child) => CuponCardWidget(
                lCupon: paymentViewModel.lCupon,
                onTapCredit: (index) {
                  paymentViewModel.changeCupon(index);
                }),
          ),
          SizedBox(
            height: ScreenSize().getWidthPercent(.037),
          ),
        ],
      ),
    );
  }
}
