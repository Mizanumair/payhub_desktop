import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../core/constants/assets.dart';
import '../core/constants/dimensions.dart';
import '../core/constants/font_weight.dart';
import '../core/constants/palette.dart';
import '../core/constants/strings.dart';
import 'custom_divider.dart';
import 'custom_text.dart';
import 'custom_textfield.dart';

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
                            Column(
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

                            DropdownButton(
                                padding: EdgeInsets.zero,
                                icon: Icon(Icons.keyboard_arrow_down_rounded, size: 20,color: AppColors.white,),
                                underline: Container(),
                                hint: CustomText(
                                    text: 'Enter 1 months',
                                    color1: AppColors.white,
                                    fontWeight: fontWeight500,
                                    fontSize: font_3),
                                borderRadius: BorderRadius.circular(radius_25),
                                focusColor: Colors.amber,
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
                            
                          ],
                        ),
                      ),
                      CustomDivider(
                        height: height_20,
                      ),
                      Column(
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
                      ]),)),

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
