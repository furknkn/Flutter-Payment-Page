import 'package:flutter/material.dart';
import 'package:ruutcase/core/constants/color-constants.dart';
import 'package:ruutcase/core/constants/icons-constants.dart';
import 'package:ruutcase/core/utility/screen-size.dart';
import 'package:ruutcase/core/utility/svg-icon.dart';
import 'package:ruutcase/core/utility/text-style.dart';

class BalanceCardWidget extends StatelessWidget {
  const BalanceCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ScreenSize().getWidthPercent(.037)),
      height: ScreenSize().getWidthPercent(.14),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: AppColors.darkBlue),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            SvgIcons(
              path: ImageConstants.instance.getCoin,
              size: 0.056,
            ),
            SizedBox(
              width: ScreenSize().getWidthPercent(.037),
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'Your Balance: ',
                      style: AppTextStyles.button12Bold
                          .copyWith(color: AppColors.softGreyLight)),
                  TextSpan(
                      text: ' \$1,250',
                      style: AppTextStyles.button14Bold
                          .copyWith(color: AppColors.softGreyLight)),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "MANAGE YOUR BALANCE",
              style: AppTextStyles.button10Bold
                  .copyWith(color: AppColors.softGreyLight),
            ),
            SizedBox(
              width: ScreenSize().getWidthPercent(.023),
            ),
            SvgIcons(
              path: ImageConstants.instance.getArrowDown,
              iconColor: AppColors.softGreyLight,
              size: .026,
            ),
          ],
        )
      ]),
    );
  }
}
