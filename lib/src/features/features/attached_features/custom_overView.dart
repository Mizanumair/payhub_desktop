import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:payhub/src/components/custom_transaction.dart';
import '../../../components/custom_divider.dart';
import '../../../components/custom_text.dart';
import '../../../components/custom_textfield.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';
import '../../../core/constants/strings.dart';
import 'custom_fl_chart.dart';


class CustomOverView extends StatelessWidget {
  const CustomOverView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
       padding: EdgeInsets.symmetric(horizontal: margin_10),
      children: [
        searchRow(),
        CustomCharts(),
        CustomDivider(
          height: height_50,
        ),
        RowTransaction(),
        CustomDivider(
          height: height_20,
        ),
        CustomTransaction()
      ],
    ));
  }



  Widget searchRow() {
    return Container(
      alignment: Alignment.center,
      height: height_90,
      //width: 500,
      padding: EdgeInsets.symmetric(vertical: margin_5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
              flex: 9,
              child: CustomTextField(
                  labelText: strSearch,
                  prefixIcon: Icon(Icons.search),
                  obscure: false,
                  height: height_0,
                  textInputType: TextInputType.text)),
          Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomDivider(
                    height: height_5,
                  ),
                  CustomText(
                      text: 'Mizan Umair',
                      color1: AppColors.darkBlue,
                      fontWeight: fontWeight700,
                      fontSize: font_4),
                  CustomDivider(
                    height: height_5,
                  ),
                  CustomText(
                      text: 'mikokok@gmail.com',
                      color1: AppColors.greyColor,
                      fontWeight: fontWeight400,
                      fontSize: font_3),
                ],
              )),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.topLeft,
              child: CircleAvatar(
                backgroundColor: Colors.yellow,
                radius: radius_20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}





