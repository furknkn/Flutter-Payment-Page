import 'package:flutter/material.dart';
import 'package:ruutcase/core/constants/color-constants.dart';
import 'package:ruutcase/core/utility/screen-size.dart';
import 'package:ruutcase/core/utility/text-style.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Finance",
          style: AppTextStyles.button20Bold.copyWith(color: AppColors.darkBlue),
        ),
        SizedBox(
          height: ScreenSize().getWidthPercent(.025),
        ),
        Text(
          "Lorem Ipsum Dolor Sit Amed",
          style: AppTextStyles.button16Regular
              .copyWith(color: AppColors.generalGreyColor),
        ),
      ],
    );
  }
}
