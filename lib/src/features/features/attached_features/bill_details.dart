import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:payhub/src/components/custom_appbar.dart';
import 'package:payhub/src/components/custom_button.dart';
import 'package:payhub/src/components/custom_divider.dart';
import 'package:payhub/src/components/custom_text.dart';
import 'package:payhub/src/components/custom_text_button.dart';
import 'package:payhub/src/components/custom_textfield.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/font_weight.dart';
import 'package:payhub/src/core/constants/palette.dart';
import 'package:payhub/src/core/constants/strings.dart';

class BillDetailsScreen extends StatelessWidget {
  const BillDetailsScreen({
    Key? key,
    required this.onTap, required this.onTapBack,
  }) : super(key: key);

  final Function() onTap;
  final Function() onTapBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: margin_10),
        children: [
          CustomTextField(
              labelText: strName,
              hintText: strEnterName,
              prefixIcon: null,
              obscure: false,
              height: height_20,
              textInputType: TextInputType.text),
          CustomTextField(
              labelText: strEmailId,
              hintText: strEnterEmail,
              prefixIcon: null,
              obscure: false,
              height: height_20,
              textInputType: TextInputType.text),
          CustomTextField(
              labelText: strMobile,
              hintText: strEnterMobile,
              prefixIcon: null,
              obscure: false,
              height: height_20,
              textInputType: TextInputType.number),
          CustomTextField(
            labelText: strGovId,
            hintText: strSelectGovId,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.keyboard_arrow_down_rounded, size: font_5),
            ),
            obscure: false,
            height: height_20,
            textInputType: TextInputType.text,
            prefixIcon: null,
          ),
          CustomTextField(
              labelText: strGovId,
              hintText: strSelectGovIdNumber,
              prefixIcon: null,
              obscure: false,
              height: height_50,
              textInputType: TextInputType.text),
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
                    onPress: onTapBack),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
