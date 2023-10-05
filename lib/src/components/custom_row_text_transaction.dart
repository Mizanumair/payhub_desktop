import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/palette.dart';

class CustomRowTransactionText extends StatelessWidget {
  const CustomRowTransactionText({Key? key,
    required this.text,
    required this.color1,
    required this.fontWeight,
    required this.fontSize,
    this.textAlign, this.onTap, this.height, this.textOverflow,

  }): super(key:key);

  final String text;
  final Color color1;
  final FontWeight fontWeight;
  final double fontSize;
  final double? height;
  final TextAlign? textAlign;
  final Function()? onTap;
  final TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 20),
            //height: height_20,
           width: width_40,
            decoration: BoxDecoration(
              border: Border(left: BorderSide(color: AppColors.greyColor.withOpacity(.2)), right: BorderSide(color: AppColors.greyColor.withOpacity(.2)))
            ),
            child: SelectableText(
              text,
              style: TextStyle(
                color: color1,
                fontFamily: 'Metropolis',
                fontWeight: fontWeight,
                fontSize: fontSize,
              ),
              textAlign: textAlign,
             // overflow: textOverflow ?? TextOverflow.ellipsis,
            ),
          ),
        ),
        SizedBox(
          height: height,
        ),

      ],
    );
  }
}
