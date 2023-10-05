import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:payhub/src/components/custom_button.dart';
import 'package:payhub/src/components/custom_divider.dart';
import 'package:payhub/src/components/custom_text.dart';
import 'package:payhub/src/core/constants/assets.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/font_weight.dart';
import 'package:payhub/src/core/constants/palette.dart';
import 'package:payhub/src/core/constants/strings.dart';

import 'custom_text_button.dart';

class ApprovedPayment extends StatelessWidget {
  const ApprovedPayment({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 400,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: margin_10),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                ImgAssets.check,
                height: height_60,
              ),
              CustomDivider(
                height: height_30,
              ),
              CustomText(
                text: '${str$}120.33',
                color1: AppColors.darkBlue,
                fontWeight: fontWeight700,
                fontSize: font_7,
                textAlign: TextAlign.center,
              ),
              CustomDivider(
                height: height_10,
              ),
              CustomText(
                text: 'Payment Accepted',
                color1: AppColors.greyColor,
                fontWeight: fontWeight500,
                fontSize: font_5,
                textAlign: TextAlign.center,
              ),
              CustomDivider(
                height: height_30,
              ),
              CustomText(
                text: strThanksPay,
                color1: AppColors.greyColor,
                fontWeight: fontWeight500,
                fontSize: font_3,
                textAlign: TextAlign.center,
                textOverflow: TextOverflow.visible,
              ),
            ],
          ),
          CustomDivider(
            height: height_50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: CustomButton(
                    text: strPayAnotherBill,
                    color: AppColors.white,
                    fontWeight: fontWeight600,
                    font: font_3,
                    width: width_50,
                    height: height_50,
                    onPress: onTap),
              ),
              Spacer(),
              Expanded(
                flex: 1,
                child: CustomButton(
                    text: 'Back',
                    color: AppColors.white,
                    fontWeight: fontWeight600,
                    font: font_3,
                    width: width_30,
                    height: height_50,
                    onPress: () {}),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                  text: 'Download Invoice',
                  color1: AppColors.black,
                  fontWeight: fontWeight500,
                  fontSize: font_3),
              CustomTextButton(
                text: 'Click Here !',
                color: AppColors.blue,
                fontWeight: fontWeight500,
                font: font_3,
                onPress: (){},
              ),
            ],
          ),
    ]));
  }
}
