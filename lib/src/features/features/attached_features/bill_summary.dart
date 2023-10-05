import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:payhub/src/components/custom_appbar.dart';
import 'package:payhub/src/components/custom_button.dart';
import 'package:payhub/src/components/custom_customer_detail.dart';
import 'package:payhub/src/components/custom_divider.dart';
import 'package:payhub/src/components/custom_text.dart';
import 'package:payhub/src/core/constants/assets.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/font_weight.dart';
import 'package:payhub/src/core/constants/palette.dart';
import 'package:payhub/src/core/constants/strings.dart';


class BillSummary extends StatelessWidget {
  const BillSummary({Key?key,
    required this.onTap,

  }): super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: 500,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: margin_10),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomDivider(
                height: height_20,
              ),
              Container(
                padding: EdgeInsets.all(radius_5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color:
                      AppColors.greyColor.withOpacity(.4), // Border color
                      width: 1, // Border width
                    )),
                child: CircleAvatar(
                  radius: radius_30,
                  backgroundColor: AppColors.transparent,
                  foregroundImage: const AssetImage(ImgAssets.gasIcon),
                ),
              ),
              CustomDivider(
                height: height_15,
              ),
              CustomText(
                text: strTelecommunications,
                color1: AppColors.darkBlue,
                fontWeight: fontWeight700,
                fontSize: font_4,
                textAlign: TextAlign.center,
              ),
              CustomDivider(
                height: height_15,
              ),
              CustomText(
                text: strYourBill,
                color1: AppColors.greyColor,
                fontWeight: fontWeight500,
                fontSize: font_3,
                textAlign: TextAlign.center,
              ),
              CustomDivider(
                height: height_15,
              ),
              CustomText(
                text: '${str$}120.56',
                color1: AppColors.darkBlue,
                fontWeight: fontWeight800,
                fontSize: font_5,
                textAlign: TextAlign.center,
              ),

            ],
          ),
          CustomDivider(
            height: height_40,
          ),
          CustomerDetails(
              name: 'Mizan Umair',
              number: '123346565665565',
              emailId: 'yvtvcftq@gmail.com',
              govIdNo: '87863756'),
          CustomDivider(
            height: height_50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: CustomButton(
                    text: strProceed,
                    color: AppColors.white,
                    fontWeight: fontWeight700,
                    font: font_4,
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
                    fontWeight: fontWeight700,
                    font: font_4,
                    width: width_30,
                    height: height_50,
                    onPress: () {}),
              ),
            ],
          )
        ],
      ),
    );
  }
}
