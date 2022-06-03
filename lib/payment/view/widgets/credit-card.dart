import 'package:flutter/material.dart';
import 'package:ruutcase/core/constants/color-constants.dart';
import 'package:ruutcase/core/constants/icons-constants.dart';
import 'package:ruutcase/core/utility/screen-size.dart';
import 'package:ruutcase/core/utility/svg-icon.dart';
import 'package:ruutcase/core/utility/text-style.dart';
import 'package:ruutcase/payment/model/credit.dart';

import '../../../core/utility/seat-as-default-or-delete-widget.dart';

class CreditCardWidget extends StatelessWidget {
  final Function(int) onTapCredit;
  final List<Credit> lCredit;
  const CreditCardWidget(
      {Key? key, required this.lCredit, required this.onTapCredit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: lCredit.length,
      itemBuilder: (context, index) {
        return InkWell(
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          onTap: () {
            onTapCredit(index);
          },
          child: Ink(
            padding: EdgeInsets.all(ScreenSize().getWidthPercent(.056)),
            width: double.infinity,
            height: ScreenSize().getWidthPercent(.25),
            decoration: lCredit[index].isSelected!
                ? BoxDecoration(
                    boxShadow: [
                        BoxShadow(
                          color: AppColors.appBlack.withOpacity(0.06),
                          spreadRadius: 0,
                          blurRadius: 36,
                          offset:
                              const Offset(0, 18), // changes position of shadow
                        ),
                      ],
                    borderRadius: BorderRadius.circular(24),
                    color: lCredit[index].isSelected!
                        ? AppColors.appWhite
                        : AppColors.softGreyLight)
                : null,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgIcons(
                        path: lCredit[index].model == "visa"
                            ? ImageConstants.instance.getVisaCard
                            : ImageConstants.instance.getMasterCard,
                        size: .07,
                      ),
                      SizedBox(
                        width: ScreenSize().getWidthPercent(.037),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            lCredit[index].type!,
                            style: AppTextStyles.button12Medium.copyWith(
                                color: lCredit[index].isSelected!
                                    ? AppColors.darkBlue
                                    : AppColors.appGrey),
                          ),
                          SizedBox(
                            height: ScreenSize().getWidthPercent(.027),
                          ),
                          Text(
                            _creditNumber(lCredit[index].number!),
                            style: AppTextStyles.button14Bold.copyWith(
                                color: lCredit[index].isSelected!
                                    ? AppColors.darkBlue
                                    : AppColors.appGrey),
                          ),
                          Text(
                            lCredit[index].date!,
                            style: AppTextStyles.button14Bold.copyWith(
                                color: lCredit[index].isSelected!
                                    ? AppColors.darkBlue
                                    : AppColors.appGrey),
                          ),
                        ],
                      )
                    ],
                  ),
                  SharedWidget()
                      .seatAsDefaultOrDelete(index, lCredit[index].isSelected!),
                ]),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: ScreenSize().getWidthPercent(.056),
        );
      },
    );
  }

  String _creditNumber(String cardNumber) =>
      "**** **** **** ${cardNumber[12] + cardNumber[13] + cardNumber[14] + cardNumber[15]}";
}
