import 'package:flutter/material.dart';
import 'package:payhub/src/components/custom_button.dart';
import 'package:payhub/src/components/custom_divider.dart';
import 'package:payhub/src/components/custom_text.dart';
import 'package:payhub/src/components/custom_textfield.dart';
import 'package:payhub/src/core/constants/assets.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/font_weight.dart';
import 'package:payhub/src/core/constants/palette.dart';
import 'package:payhub/src/core/constants/strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
                horizontal: margin_15, vertical: margin_10),
            width: MediaQuery.of(context).size.width * .4,
            //height: height_700,
            decoration: BoxDecoration(
                color: AppColors.blue,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(radius_50),
                    bottomRight: Radius.circular(radius_50))),
            child: ListView(
              children: [
                CustomDivider(
                  height: height_30,
                ),
                Image.asset(
                  ImgAssets.logoPH,
                  height: height_60,
                ),
                CustomDivider(
                  height: height_70,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                        text: strLetLog,
                        color1: AppColors.white,
                        fontWeight: fontWeight600,
                        fontSize: font_10),
                    CustomDivider(
                      height: height_10,
                    ),
                    CustomText(
                      text: strLetLogViaAdmin,
                      color1: AppColors.white,
                      fontWeight: fontWeight400,
                      fontSize: font_4,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                CustomDivider(
                  height: height_50,
                ),
                CustomTextField(
                    first: true,
                    labelText: strEnterEmail,
                    prefixIcon: Image(image: AssetImage(ImgAssets.emailIcon)),
                    obscure: false,
                    height: height_15,
                    textInputType: TextInputType.text),
                CustomTextField(
                    first: true,
                    labelText: strPassword,
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width_1),
                      child: Image(image: AssetImage(ImgAssets.passIcon)),
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {
                          print('password_vicibility');
                        },
                        icon: Icon(Icons.visibility_outlined)),
                    obscure: false,
                    height: height_15,
                    textInputType: TextInputType.text),
                CustomDivider(
                  height: height_50,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: margin_10),
                  child: CustomButton(
                      text: strLogin,
                      color: AppColors.blue,
                      fontWeight: fontWeight600,
                      font: font_5,
                      buttonColor: AppColors.white,
                      onPress: () {}),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
                horizontal: margin_15, vertical: margin_10),
            width: MediaQuery.of(context).size.width * .6,
            child: Image(image: AssetImage(ImgAssets.splashTwo), height: height_300),
          ),
        ],
      ),
    );
  }
}
