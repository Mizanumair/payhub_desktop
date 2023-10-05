import 'package:flutter/material.dart';
import 'package:payhub/src/components/custom_overView.dart';
import 'package:payhub/src/components/custom_payBill.dart';
import 'package:payhub/src/components/custom_text_button.dart';

import '../core/constants/assets.dart';
import '../core/constants/dimensions.dart';
import '../core/constants/font_weight.dart';
import '../core/constants/palette.dart';
import '../core/constants/strings.dart';
import '../features/features/home/home_screen.dart';
import 'custom_button.dart';
import 'custom_divider.dart';
import 'custom_text.dart';
import 'custome_home_bar.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({
    Key? key,
    this.homeTap,
    this.viewBillTap,
    this.payBillTap,
  }) : super(key: key);

  final Function()? homeTap;
  final Function()? viewBillTap;
  final Function()? payBillTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Image.asset(
          ImgAssets.logoPH,
          height: height_80,
        ),
        CustomDivider(
          height: height_15,
        ),
        Padding(
          padding: EdgeInsets.only(right: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: margin_5, vertical: margin_2),
                  decoration: BoxDecoration(
                      color: AppColors.darkBlue,
                      borderRadius: BorderRadius.circular(radius_5),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyColor.withOpacity(.5),
                          spreadRadius: 5,
                          blurRadius: 15,
                          offset: Offset(0, 5),
                        )
                      ]),
                  child: CustomText(
                      text: strLogOut,
                      color1: AppColors.white,
                      fontWeight: fontWeight500,
                      fontSize: font_3),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextButton(
                  text: strHome.toUpperCase(),
                  color: AppColors.blue,
                  fontWeight: fontWeight600,
                  font: font_4,
                  onPress: homeTap!),
              CustomDivider(
                width: width_10,
              ),
              CustomTextButton(
                  text: strViewBill.toUpperCase(),
                  color: AppColors.blue,
                  fontWeight: fontWeight600,
                  font: font_4,
                  onPress: viewBillTap!),
              CustomDivider(
                width: width_10,
              ),
              CustomTextButton(
                  text: strPayBill.toUpperCase(),
                  color: AppColors.blue,
                  fontWeight: fontWeight600,
                  font: font_4,
                  onPress: payBillTap!),
            ],
          ),
        ),
        CustomDivider(
          height: height_10,
        ),
        Divider(
          height: height_15,
          color: AppColors.greyColor.withOpacity(.2),
        ),
      ],
    );
  }
}

//
// @override
// Widget build(BuildContext context) {
//   return Container(
//     alignment: Alignment.center,
//     padding: EdgeInsets.symmetric(
//         horizontal: margin_10, vertical: margin_10),
//     width: MediaQuery.of(context).size.width * .25,
//     //height: height_700,
//     decoration: BoxDecoration(
//         color: AppColors.blue,
//         borderRadius: BorderRadius.only(
//             topRight: Radius.circular(radius_50),
//             bottomRight: Radius.circular(radius_50))),
//     child: ListView(
//       children: [
//         CustomDivider(
//           height: height_30,
//         ),
//         Align(
//           alignment: Alignment.topLeft,
//           child: Image.asset(
//             ImgAssets.logoPH,
//             height: height_60,
//           ),
//         ),
//         CustomDivider(
//           height: height_90,
//         ),
//         ListTile(
//           titleAlignment: ListTileTitleAlignment.center,
//           leading: Image.asset(ImgAssets.home, height: height_15,),
//           title: CustomText(
//               text: strHome,
//               color1: AppColors.white,
//               fontWeight: fontWeight400,
//               fontSize: font_3),
//           onTap: (){},
//         ),
//         ListTile(
//           titleAlignment: ListTileTitleAlignment.center,
//           leading: Image.asset(ImgAssets.bill, height: height_15,),
//           title: CustomText(
//               text: strViewBill,
//               color1: AppColors.white,
//               fontWeight: fontWeight400,
//               fontSize: font_3),
//         ),
//         ListTile(
//           titleAlignment: ListTileTitleAlignment.center,
//           leading: Image.asset(ImgAssets.wallet, height: height_15,),
//           title: CustomText(
//               text: strPayBill,
//               color1: AppColors.white,
//               fontWeight: fontWeight400,
//               fontSize: font_3),
//         ),
//
//         Padding(
//           padding: EdgeInsets.only(top: margin_40, bottom: margin_5),
//           child: ListTile(
//             titleAlignment: ListTileTitleAlignment.center,
//             leading: Image.asset(ImgAssets.logoutIcon, height: height_15,),
//             title: CustomText(
//                 text: strLogOut,
//                 color1: AppColors.white,
//                 fontWeight: fontWeight400,
//                 fontSize: font_3),
//           ),
//
//         ),
//         CustomText(
//             text: strLastLog,
//             color1: AppColors.white,
//             fontWeight: fontWeight300,
//             fontSize: font_3),
//         CustomDivider(
//           height: height_5,
//         ),
//         CustomText(
//             text: '12-September 2023 / 14:20',
//             color1: AppColors.white,
//             fontWeight: fontWeight300,
//             fontSize: font_3),
//       ],
//     ),
//   );
// }
