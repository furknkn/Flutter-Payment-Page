import 'package:flutter/material.dart';
import 'package:ruutcase/core/utility/screen-size.dart';
import 'package:ruutcase/core/utility/text-style.dart';

import '../constants/color-constants.dart';

class SharedWidget {
  Column seatAsDefaultOrDelete(int index, bool isSelected) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Seat as Default",
              style: AppTextStyles.button10medium.copyWith(
                  color: isSelected ? AppColors.darkBlue : AppColors.appGrey),
            ),
            dotWidget(),
            Text(
              "Delete",
              style: AppTextStyles.button10medium
                  .copyWith(color: AppColors.appRed),
            ),
          ],
        ),
      ],
    );
  }

  Container dotWidget() {
    return Container(
      margin:
          EdgeInsets.symmetric(horizontal: ScreenSize().getWidthPercent(.01)),
      width: ScreenSize().getWidthPercent(.01),
      height: ScreenSize().getWidthPercent(.01),
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: AppColors.appWhiteGrey),
    );
  }
}
