import 'package:flutter/material.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/palette.dart';

import '../core/constants/font_weight.dart';
import '../core/constants/strings.dart';
import 'custom_divider.dart';
import 'custom_text.dart';
import 'custom_textfield.dart';

class CustomSearchRow extends StatelessWidget {
  const CustomSearchRow({super.key});

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                child: CustomTextField(
                  labelText: strSearch,
                  prefixIcon: Icon(Icons.search),
                  obscure: false,
                  height: height_3,
                  textInputType: TextInputType.text,
                  onTap: (){},
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                        text: 'Mizan Umair',
                        color1: AppColors.darkBlue,
                        fontWeight: fontWeight600,
                        fontSize: font_3),
                    CustomDivider(
                      height: height_5,
                    ),
                    CustomText(
                        text: 'ftydftefd@gmail.com',
                        color1: AppColors.greyColor,
                        fontWeight: fontWeight400,
                        fontSize: font_3),
                  ],
                ),
              ),
              CircleAvatar(
                backgroundColor: AppColors.greyColor,
                radius: radius_22,
              ),

            ],
          ),
        ),
      );
  }
}






