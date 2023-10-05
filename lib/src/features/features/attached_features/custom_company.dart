import 'package:flutter/material.dart';
import 'package:payhub/src/components/custom_divider.dart';
import 'package:payhub/src/core/constants/assets.dart';
import 'package:payhub/src/core/constants/dimensions.dart';

import '../../../components/custom_text.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';


class Company extends StatelessWidget {

  Company({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10, bottom: 10, left: 5),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 100,
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: AppColors.greyColor.withOpacity(.2))),
                  child: Image.asset(
                    ImgAssets.strataIcon,
                    height: height_30,
                  )),
              CustomDivider(
                height: height_5,
              ),
              CustomText(
                //  textAlign: TextAlign.center,
                  text: 'Digicel',
                  color1: AppColors.darkBlue,
                  fontWeight: fontWeight600,
                  fontSize: font_3)
            ],
          ),
        ),
      ),
    );
  }

}

