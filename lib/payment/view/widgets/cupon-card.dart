import 'package:flutter/material.dart';
import 'package:ruutcase/core/constants/color-constants.dart';
import 'package:ruutcase/core/utility/screen-size.dart';
import 'package:ruutcase/core/utility/text-style.dart';

import 'package:ruutcase/payment/model/cupon.dart';

import '../../../core/utility/seat-as-default-or-delete-widget.dart';

class CuponCardWidget extends StatelessWidget {
  final Function(int) onTapCredit;
  final List<Cupon> lCupon;
  const CuponCardWidget(
      {Key? key, required this.onTapCredit, required this.lCupon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: ScreenSize().getWidthPercent(.025)),
                child: InkWell(
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  onTap: () {
                    onTapCredit(index);
                  },
                  child: Ink(
                    width: double.infinity,
                    height: ScreenSize().getWidthPercent(.3),
                    decoration: BoxDecoration(
                        color: lCupon[index].isSelected!
                            ? AppColors.appWhite
                            : AppColors.softGreyLight,
                        borderRadius: BorderRadius.circular(24)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: ScreenSize().getWidthPercent(.028),
                      ),
                      child: Row(children: [
                        RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            "${lCupon[index].name}\n${lCupon[index].discount.toString()}Discount",
                            textAlign: TextAlign.center,
                            style: AppTextStyles.button12Bold
                                .copyWith(color: AppColors.appGrey),
                          ),
                        ),
                        SizedBox(
                          width: ScreenSize().getWidthPercent(.08),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: ScreenSize().getWidthPercent(.050),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                lCupon[index].code!,
                                style: AppTextStyles.button24Bold.copyWith(
                                    color: lCupon[index].isSelected!
                                        ? AppColors.darkBlue
                                        : AppColors.appGrey),
                              ),
                              SizedBox(
                                height: ScreenSize().getWidthPercent(.023),
                              ),
                              Row(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'Expiry: ',
                                      style: AppTextStyles.button12Regular
                                          .copyWith(
                                              color: lCupon[index].isSelected!
                                                  ? AppColors.generalGreyColor
                                                  : AppColors.appGrey),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: lCupon[index].date!,
                                          style: AppTextStyles.button12Bold
                                              .copyWith(
                                                  color:
                                                      lCupon[index].isSelected!
                                                          ? AppColors
                                                              .generalGreyColor
                                                          : AppColors.appGrey),
                                        )
                                      ],
                                    ),
                                  ),
                                  SharedWidget().dotWidget(),
                                  RichText(
                                    text: TextSpan(
                                      text:
                                          lCupon[index].piece.toString() + " ",
                                      style: AppTextStyles.button12Bold
                                          .copyWith(
                                              color: lCupon[index].isSelected!
                                                  ? AppColors.generalGreyColor
                                                  : AppColors.appGrey),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "Uses left",
                                          style: AppTextStyles.button12Regular
                                              .copyWith(
                                                  color:
                                                      lCupon[index].isSelected!
                                                          ? AppColors
                                                              .generalGreyColor
                                                          : AppColors.appGrey),
                                        )
                                      ],
                                    ),
                                  ),
                                  SharedWidget().dotWidget(),
                                  RichText(
                                    text: TextSpan(
                                      text: '\$',
                                      style: AppTextStyles.button12Regular
                                          .copyWith(
                                              color: lCupon[index].isSelected!
                                                  ? AppColors.generalGreyColor
                                                  : AppColors.appGrey),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text:
                                              lCupon[index].amount.toString() +
                                                  " Worth",
                                          style: AppTextStyles.button12Bold
                                              .copyWith(
                                                  color:
                                                      lCupon[index].isSelected!
                                                          ? AppColors
                                                              .generalGreyColor
                                                          : AppColors.appGrey),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: ScreenSize().getWidthPercent(.037),
                              ),
                              SharedWidget().seatAsDefaultOrDelete(
                                  index, lCupon[index].isSelected!),
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: ScreenSize().getWidthPercent(.11),
                  child: Container(
                    width: ScreenSize().getWidthPercent(.046),
                    height: ScreenSize().getWidthPercent(.046),
                    decoration: const BoxDecoration(
                        color: AppColors.softGreyLight, shape: BoxShape.circle),
                  )),
              Positioned(
                  left: ScreenSize().getWidthPercent(.11),
                  bottom: 0,
                  child: Container(
                    width: ScreenSize().getWidthPercent(.046),
                    height: ScreenSize().getWidthPercent(.046),
                    decoration: const BoxDecoration(
                        color: AppColors.softGreyLight, shape: BoxShape.circle),
                  )),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: ScreenSize().getWidthPercent(.025),
          );
        },
        itemCount: lCupon.length);
  }
}
