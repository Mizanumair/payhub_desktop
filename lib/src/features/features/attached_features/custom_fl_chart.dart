import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../../../components/custom_divider.dart';
import '../../../components/custom_text.dart';
import '../../../core/constants/assets.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';
import '../../../core/constants/strings.dart';


class CustomCharts extends StatelessWidget {
  const
  CustomCharts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 450,
      //width: 100,
      //color: Colors.red,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(radius_20),
                decoration: BoxDecoration(
                    color: AppColors.greyColor.withOpacity(.1),
                    borderRadius: BorderRadius.circular(radius_20)
                ),
                child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: margin_5, vertical: margin_5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomDivider(
                                    height: height_5,
                                  ),
                                  CustomText(
                                      text: strStatistics,
                                      color1: AppColors.greyColor,
                                      fontWeight: fontWeight700,
                                      fontSize: font_4),
                                  CustomDivider(
                                    height: height_5,
                                  ),
                                  CustomText(
                                      text: strOverview,
                                      color1: AppColors.darkBlue,
                                      fontWeight: fontWeight600,
                                      fontSize: font_5),
                                ],
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: Container(
                                height: height_25,
                                //width: 500,
                                padding: EdgeInsets.symmetric(horizontal: margin_2),
                                decoration: BoxDecoration(
                                    color: AppColors.blue,
                                    borderRadius: BorderRadius.circular(radius_25)),
                                child: SingleChildScrollView(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.horizontal,
                                  child: DropdownButton(
                                      padding: EdgeInsets.zero,
                                      icon: Icon(Icons.keyboard_arrow_down_rounded, size: 20,color: AppColors.white,),
                                      underline: Container(),
                                      hint: CustomText(
                                          text: 'Enter 1 months',
                                          color1: AppColors.white,
                                          fontWeight: fontWeight500,
                                          fontSize: font_3),
                                      borderRadius: BorderRadius.circular(radius_25),
                                      dropdownColor: AppColors.blue,
                                      items: [
                                        DropdownMenuItem(
                                          value: 'item',
                                          child: CustomText(
                                              text: 'item',
                                              color1: AppColors.white,
                                              fontWeight: fontWeight500,
                                              fontSize: font_4),
                                        ),
                                        DropdownMenuItem(
                                          value: 'zone',
                                          child: CustomText(
                                              text: 'zone',
                                              color1: AppColors.white,
                                              fontWeight: fontWeight500,
                                              fontSize: font_4),
                                        ),
                                      ],
                                      onChanged: (value) {}),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      CustomDivider(
                        height: height_20,
                      ),
                      Container(
                        width: 350,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: margin_5, vertical: margin_15),
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(radius_15)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomText(
                                text: strTotalPayRec,
                                color1: AppColors.greyColor,
                                fontWeight: fontWeight500,
                                fontSize: font_4),
                            CustomDivider(
                              height: height_5,
                            ),
                            CustomText(
                                text: '\$200.45',
                                color1: AppColors.darkBlue,
                                fontWeight: fontWeight700,
                                fontSize: font_5),
                          ],
                        ),
                      ),
                      CustomDivider(
                        height: height_30,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.all(margin_6),
                              decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(radius_15)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    ImgAssets.kioskCard,
                                    height: height_50,
                                    color: AppColors.darkBlue,
                                  ),
                                  CustomDivider(
                                    height: height_5,
                                  ),
                                  CustomText(
                                      text: '\$234.33',
                                      color1: AppColors.darkBlue,
                                      fontWeight: fontWeight700,
                                      fontSize: font_5),
                                  CustomDivider(
                                    height: height_5,
                                  ),
                                  CustomText(
                                      text: strCardPay,
                                      color1: AppColors.greyColor,
                                      fontWeight: fontWeight400,
                                      fontSize: font_3),
                                ],
                              ),
                            ),
                            CustomDivider(
                              width: width_23,
                            ),
                            Container(
                              padding: EdgeInsets.all(margin_6),
                              decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(radius_15)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    ImgAssets.kioskCash,
                                    height: height_50,
                                    color: AppColors.darkBlue,
                                  ),
                                  CustomDivider(
                                    height: height_5,
                                  ),
                                  CustomText(
                                      text: '\$234.33',
                                      color1: AppColors.darkBlue,
                                      fontWeight: fontWeight700,
                                      fontSize: font_5),
                                  CustomDivider(
                                    height: height_5,
                                  ),
                                  CustomText(
                                      text: strCashPay,
                                      color1: AppColors.greyColor,
                                      fontWeight: fontWeight400,
                                      fontSize: font_3),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )]),)),
          SizedBox(
            width: width_10,
          ),
          Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(radius_20),
                decoration: BoxDecoration(
                    color: AppColors.greyColor.withOpacity(.1),
                    borderRadius: BorderRadius.circular(radius_20)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: margin_0, vertical: margin_5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomDivider(
                                  height: height_5,
                                ),
                                CustomText(
                                    text: strStatistics,
                                    color1: AppColors.greyColor,
                                    fontWeight: fontWeight700,
                                    fontSize: font_4),
                                CustomDivider(
                                  height: height_5,
                                ),
                                CustomText(
                                    text: strPayRec,
                                    color1: AppColors.darkBlue,
                                    fontWeight: fontWeight600,
                                    fontSize: font_5),
                              ],
                            ),
                          ),

                          Expanded(
                            flex: 1,
                            child: Container(
                              height: height_25,
                              //width: 500,
                              padding: EdgeInsets.symmetric(horizontal: margin_2),
                              decoration: BoxDecoration(
                                  color: AppColors.blue,
                                  borderRadius: BorderRadius.circular(radius_25)),
                              child: SingleChildScrollView(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.horizontal,
                                child: DropdownButton(
                                    padding: EdgeInsets.zero,
                                    icon: Icon(Icons.keyboard_arrow_down_rounded, size: 20,color: AppColors.white,),
                                    underline: Container(),
                                    hint: CustomText(
                                        text: 'Enter 1 months',
                                        color1: AppColors.white,
                                        fontWeight: fontWeight500,
                                        fontSize: font_3),
                                    borderRadius: BorderRadius.circular(radius_25),
                                    dropdownColor: AppColors.blue,
                                    items: [
                                      DropdownMenuItem(
                                        value: 'item',
                                        child: CustomText(
                                            text: 'item',
                                            color1: AppColors.white,
                                            fontWeight: fontWeight500,
                                            fontSize: font_4),
                                      ),
                                      DropdownMenuItem(
                                        value: 'zone',
                                        child: CustomText(
                                            text: 'zone',
                                            color1: AppColors.white,
                                            fontWeight: fontWeight500,
                                            fontSize: font_4),
                                      ),
                                    ],
                                    onChanged: (value) {}),
                              ),
                            ),
                          )
                        ],
                      ),
                    ), //statics pay received
                    FittedBox(
                      child: Container(
                        height: 330,
                        width: 600,
                        //padding: EdgeInsets.all(20),
                        child: LineChart(
                          LineChartData(
                            extraLinesData: ExtraLinesData(
                                extraLinesOnTop: true,
                                horizontalLines: List.filled(10, HorizontalLine(y: 8))
                            ),
                            baselineX: 0,
                            baselineY: 5,
                            gridData: FlGridData(
                                show: true,
                                getDrawingHorizontalLine: (val){
                                  return FlLine(
                                      color: AppColors.greyColor,
                                      strokeWidth: 1
                                  );
                                },
                                drawVerticalLine: false
                            ),
                            titlesData: FlTitlesData(show: true,
                              leftTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  reservedSize: 14,
                                  //interval: 1,
                                  getTitlesWidget: (value, meta) {
                                    // Custom Widget create karke return karna
                                    switch (value.toInt()) {
                                      case 1:
                                        return customTex(text: '0',);
                                      case 2:
                                        return customTex(text: '1k',);
                                      case 3:
                                        return customTex(text: '2k');
                                      case 4:
                                        return customTex(text: '3k');
                                      case 5:
                                        return customTex(text: '4k');
                                      default:
                                        return Text('');
                                    }
                                  },
                                ),
                              ),
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  getTitlesWidget: (value, meta) {
                                    // Custom Widget create karke return karna
                                    switch (value.toDouble()) {
                                      case 0:
                                        return customTex(
                                          text: 'Jan',);
                                      case 0.5:
                                        return customTex(
                                          text: 'Feb',);
                                      case 1:
                                        return customTex(
                                          text: 'Mar',);
                                      case 1.5:
                                        return customTex(
                                          text: 'Apr',);
                                      case 2:
                                        return customTex(
                                          text: 'May',);
                                      case 2.5:
                                        return customTex(
                                          text: 'Jun',);
                                      case 3:
                                        return customTex(
                                          text: 'Jul',);
                                      case 3.5:
                                        return customTex(
                                          text: 'Aug',);
                                      case 4:
                                        return customTex(
                                          text: 'Sep',);
                                      case 4.5:
                                        return customTex(
                                          text: 'Oct',);
                                      case 5:
                                        return customTex(
                                          text: 'Nov',);
                                      case 5.5:
                                        return customTex(
                                          text: 'Dec',);
                                      default:
                                        return Text('');
                                    }
                                  },
                                ),
                              ),
                              rightTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: false,
                                  )
                              ),
                              topTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                      showTitles: false
                                  )
                              ),
                            ),
                            borderData: FlBorderData(
                              show: false,
                            ),
                            minX: 0,
                            maxX: 6,
                            minY: 0,
                            maxY: 6,
                            lineBarsData: [
                              LineChartBarData(
                                spots: [
                                  FlSpot(0, 3),
                                  FlSpot(1, 1),
                                  FlSpot(2, 4),
                                  FlSpot(3, 2),
                                  FlSpot(4, 6),
                                  FlSpot(5, 1),
                                  FlSpot(6, 3),
                                ],
                                isCurved: false,
                                color: AppColors.blue,
                                dotData: FlDotData(show: false),
                                belowBarData: BarAreaData(show: false),
                              ),
                            ],
                          ),),
                      ),
                    )

                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget customTex({required String text}){
    return CustomText(
        text: text,
        color1: AppColors.greyColor,
        fontWeight: fontWeight400,
        fontSize: font_3);
  }
}
