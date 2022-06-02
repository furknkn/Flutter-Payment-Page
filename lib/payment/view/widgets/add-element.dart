import 'package:flutter/material.dart';
import 'package:ruutcase/core/constants/color-constants.dart';
import 'package:ruutcase/core/utility/screen-size.dart';
import 'package:ruutcase/core/utility/text-style.dart';

import '../../../core/constants/icons-constants.dart';
import '../../../core/utility/svg-icon.dart';

class AddElementWidget extends StatelessWidget {
  final String name;

  const AddElementWidget({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: AppTextStyles.button16Bold.copyWith(color: AppColors.appGrey),
        ),
        Row(
          children: [
            Text(
              "ADD NEW",
              style: AppTextStyles.button10medium
                  .copyWith(color: AppColors.appGrey),
            ),
            SizedBox(
              width: ScreenSize().getWidthPercent(.018),
            ),
            SvgIcons(
              path: ImageConstants.instance.getPlus,
              size: .018,
            )
          ],
        )
      ],
    );
  }
}
