import 'package:flutter/material.dart';
import 'package:payhub/src/components/custom_data.dart';

import '../core/constants/assets.dart';
import '../core/constants/dimensions.dart';
import '../core/constants/font_weight.dart';
import '../core/constants/palette.dart';
import '../core/constants/strings.dart';
import 'custom_divider.dart';
import 'custom_fl_chart.dart';
import 'custom_home_container.dart';
import 'custom_text.dart';
import 'custom_textfield.dart';
import 'custom_transaction.dart';

class PayBills extends StatelessWidget {
  const PayBills({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: margin_10),
        children: [
          Container(
            padding: EdgeInsets.only(bottom: margin_10),
            decoration: BoxDecoration(
              color: AppColors.greyColor.withOpacity(.1),
              borderRadius: BorderRadius.circular(radius_20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(margin_10),
                  child: CustomText(
                    text: strPayHubStatement,
                    color1: AppColors.darkBlue,
                    fontWeight: fontWeight700,
                    fontSize: font_4,
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: margin_10),
                    child: GridView(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5,
                          mainAxisSpacing: height_50,
                          crossAxisSpacing: width_15),
                      children: [
                        // for(int i=1; i<20; i++)
                        CustomHomeContainer(
                          image: ImgAssets.utilityDTIcon,
                          text: strUtility,
                          onTap: () {
                            return showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return BrandName();
                                });
                          },
                        ),
                        CustomHomeContainer(
                          image: ImgAssets.gasDTIcon,
                          text: strGas,
                          onTap: () {},
                        ),
                        CustomHomeContainer(
                          image: ImgAssets.waterDTIcon,
                          text: strWater,
                          onTap: () {},
                        ),
                        CustomHomeContainer(
                          image: ImgAssets.telecomDTIcon,
                          text: strTelecommunications,
                          onTap: () {},
                        ),
                        CustomHomeContainer(
                          image: ImgAssets.strataDTIcon,
                          text: strStrata,
                          onTap: () {},
                        ),
                        CustomHomeContainer(
                          image: ImgAssets.insuranceDTIcon,
                          text: strInsurance,
                          onTap: () {},
                        ),
                        CustomHomeContainer(
                          image: ImgAssets.pensionDTIcon,
                          text: strPension,
                          onTap: () {},
                        ),
                        CustomHomeContainer(
                          image: ImgAssets.energyDTIcon,
                          text: strEnergy,
                          onTap: () {},
                        ),
                        CustomHomeContainer(
                          image: ImgAssets.bankDTIcon,
                          text: strBank,
                          onTap: () {},
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget searchRow() {
    return Container(
      alignment: Alignment.center,
      height: height_90,
      color: Colors.cyanAccent,
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
