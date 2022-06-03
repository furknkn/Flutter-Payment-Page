import 'package:flutter/material.dart';
import 'package:ruutcase/core/constants/color-constants.dart';
import 'package:ruutcase/core/utility/screen-size.dart';
import 'package:ruutcase/core/utility/svg-icon.dart';
import 'package:ruutcase/core/utility/text-style.dart';
import '../../../core/constants/icons-constants.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      color: AppColors.softGreyLight,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ScreenSize().getWidthPercent(.046)),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [drawerMenu(), giftAndNotification()]),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(ScreenSize().getWidthPercent(.22));

  Widget drawerMenu() {
    return Material(
        child: InkWell(
            onTap: () {},
            child: SvgIcons(
              path: ImageConstants.instance.getAppbarIcon,
              size: 0.06,
            )));
  }

  Widget giftAndNotification() {
    return Row(
      children: [
        Container(
          width: ScreenSize().getWidthPercent(.22),
          height: ScreenSize().getWidthPercent(.07),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: AppColors.appDarkBlue,
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SvgIcons(
              path: ImageConstants.instance.getGift,
              iconColor: AppColors.appGreen,
              size: 0.045,
            ),
            Text(
              "  Get 50\$",
              style: AppTextStyles.button12Bold
                  .copyWith(color: AppColors.appGreen),
            ),
          ]),
        ),
        SizedBox(
          width: ScreenSize().getWidthPercent(.046),
        ),
        Stack(
          children: [
            Positioned(
              child: SvgIcons(
                path: ImageConstants.instance.getNotification,
                size: .046,
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                height: ScreenSize().getWidthPercent(.025),
                width: ScreenSize().getWidthPercent(.025),
                decoration: const BoxDecoration(
                  color: AppColors.appRed,
                  shape: BoxShape.circle,
                ),
                child: Center(
                    child: Text("4",
                        style: AppTextStyles.button8Regular.copyWith(
                          color: AppColors.appWhite,
                        ))),
              ),
            ),
          ],
        )
      ],
    );
  }
}
