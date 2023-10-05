import 'package:flutter/material.dart';
import 'package:payhub/src/components/custom_divider.dart';
import 'package:payhub/src/components/custom_text.dart';
import 'package:payhub/src/core/constants/strings.dart';

import '../../../components/custom_button.dart';
import '../../../components/custom_textfield.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';



class ConfirmAmount extends StatelessWidget {
  const ConfirmAmount({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 500,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: margin_10),
        children: [
          CustomText(
              text: strConfirmAmount,
              color1: AppColors.black,
              fontWeight: fontWeight600,
              fontSize: font_5,
            textAlign: TextAlign.center,
          ),
          CustomDivider(
            height: height_35,
          ),
          CustomTextField(
              labelText: strAmount,
              hintText: 'Collected Amount',
              prefixIcon: null,
              obscure: false,
              height: height_80,
              textInputType: TextInputType.text),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: margin_20),
            child: CustomButton(
                text: strProceed,
                color: AppColors.white,
                fontWeight: fontWeight700,
                font: font_4,
                width: width_50,
                height: height_50,
                onPress: onTap),
          ),
        ],
      ),
    );
  }
}
