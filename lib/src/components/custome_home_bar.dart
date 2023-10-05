import 'package:flutter/material.dart';
import 'package:payhub/src/components/custom_divider.dart';
import 'package:payhub/src/components/custom_text.dart';
import 'package:payhub/src/core/constants/assets.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/font_weight.dart';
import 'package:payhub/src/core/constants/palette.dart';
import 'package:payhub/src/core/constants/strings.dart';

class HomeBar extends StatelessWidget {
  const HomeBar({
    Key? key,
    this.containerColor,
    this.textImgColor,
    required this.text,
    required this.image, required this.onTap,
  }) : super(key: key);

  final Color? containerColor;
  final Color? textImgColor;
  final String text;
  final String image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: margin_2),
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: margin_5),
          height: 40,
          width: 200,
          decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(radius_10)),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Image.asset(
                image,
                height: height_20,
                color: textImgColor,
              ),
              CustomDivider(
                width: width_3,
              ),
              CustomText(
                  text: text,
                  color1: textImgColor!,
                  fontWeight: fontWeight400,
                  fontSize: font_3),
            ],
          ),
        ),
      ),
    );
  }
}
