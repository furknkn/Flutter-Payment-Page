import 'package:flutter/material.dart';
import 'package:ruutcase/core/constants/color-constants.dart';
import 'package:ruutcase/core/utility/screen-size.dart';
import 'package:ruutcase/core/utility/text-style.dart';

class SelectedBodyWidget extends StatelessWidget {
  const SelectedBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        _buildChip("Revenue", false),
        _buildChip("Payments", false),
        _buildChip("Payment Methods", true),
        _buildChip("Invoices", false),
      ],
    );
  }

  Widget _buildChip(String value, bool isSelect) {
    return Container(
      padding: EdgeInsets.all(ScreenSize().getWidthPercent(.028)),
      margin:
          EdgeInsets.symmetric(horizontal: ScreenSize().getWidthPercent(.01)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isSelect ? AppColors.appWhite : AppColors.softGreyLight),
      child: Text(
        value,
        style: isSelect
            ? AppTextStyles.button12Bold.copyWith(color: AppColors.darkBlue)
            : AppTextStyles.button12Bold
                .copyWith(color: AppColors.generalGreyColor),
      ),
    );
  }
}
