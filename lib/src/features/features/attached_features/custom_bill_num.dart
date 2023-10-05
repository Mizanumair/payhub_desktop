import 'package:flutter/material.dart';

import '../../../components/custom_button.dart';
import '../../../components/custom_divider.dart';
import '../../../components/custom_text_button.dart';
import '../../../components/custom_textfield.dart';
import '../../../core/constants/assets.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';
import '../../../core/constants/strings.dart';


class BillNo extends StatelessWidget {
   BillNo({Key?key,
     required this.onTap,

   }): super(key: key);

   final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 340,
        width: 500,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: margin_10),
          children: [
            CustomDivider(
              height: height_20,
            ),
            CustomTextField(
              labelText: strTelecommunications,
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: margin_5),
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: margin_3, horizontal: margin_0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: AppColors.greyColor.withOpacity(.6))),
                  child: CircleAvatar(
                      radius: 15,
                      backgroundColor: AppColors.transparent,
                      child: Image(
                        image: AssetImage(ImgAssets.gasIcon),
                        height: height_50,
                      )),
                ),
              ),
              suffixIcon: CustomTextButton(
                text: strChange,
                color: AppColors.blue,
                fontWeight: fontWeight600,
                font: font_3,
                onPress: () {},
              ),
              obscure: false,
              readOnly: true,
              height: height_20,
              textInputType: TextInputType.text,
              onTap: () {
                print('Success');
              },
            ),
            CustomTextField(
              labelText: strEnterBillN,
              hintText: strEnterBillN,
              prefixIcon: null,
              suffixIcon: null,
              obscure: false,
              height: height_20,
              textInputType: TextInputType.text,
              onTap: () {
                print('Success');
              },
            ),
            CustomTextField(
              labelText: strAmount,
              hintText: strAmountToBe,
              prefixIcon: null,
              obscure: false,
              height: height_50,
              textInputType: TextInputType.text,
              onTap: () {
                print('Success');
              },
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
        ));
  }
}
