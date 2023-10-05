import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:payhub/src/core/constants/assets.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/strings.dart';
import '../core/constants/font_weight.dart';
import '../core/constants/palette.dart';
import 'custom_divider.dart';
import 'custom_text.dart';
import 'custom_textfield.dart';

class Overview extends StatelessWidget {
  const Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: margin_5, vertical: margin_5),
        color: Colors.cyanAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [customSearchRow(), rowOverview()],
        ));
  }

  Widget rowOverview() {
    return Container(
       // height: 300,
        width: 350,
        decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(radius_20)),
        child: SingleChildScrollView(
          child: Column(
              children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          text: strStatistics,
                          color1: AppColors.greyColor,
                          fontWeight: fontWeight400,
                          fontSize: font_3),
                      CustomDivider(
                        height: height_5,
                      ),
                      CustomText(
                          text: strOverview,
                          color1: AppColors.darkBlue,
                          fontWeight: fontWeight700,
                          fontSize: font_5),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: margin_2),
                    decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.circular(radius_30)),
                    child: FittedBox(
                      child: DropdownButton(
                          padding: EdgeInsets.zero,
                          icon: Icon(Icons.keyboard_arrow_down_rounded,
                              size: 15, color: AppColors.white),
                          underline: Container(),
                          hint: Text(
                            'Last 1 months',
                            style: TextStyle(
                                fontSize: font_4,
                                fontWeight: fontWeight400,
                                color: AppColors.white,
                                fontFamily: 'Metropolis'),
                            overflow: TextOverflow.fade,
                          ),
                          borderRadius: BorderRadius.circular(radius_25),
                          dropdownColor: AppColors.blue,
                          items: [
                            DropdownMenuItem(
                              value: 'item',
                              child: Text(
                                'item',
                                style: TextStyle(
                                    fontSize: font_4,
                                    fontWeight: fontWeight400,
                                    color: AppColors.white,
                                    fontFamily: 'Metropolis'),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'zone',
                              child: Text(
                                'zone',
                                style: TextStyle(
                                    fontSize: font_4,
                                    fontWeight: fontWeight400,
                                    color: AppColors.white,
                                    fontFamily: 'Metropolis'),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                          onChanged: (value) {}),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: margin_20, vertical: margin_20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(radius_20)),
              child: Column(
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
                      text: '\$234.33',
                      color1: AppColors.darkBlue,
                      fontWeight: fontWeight700,
                      fontSize: font_5),
                ],
              ),
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
                        borderRadius: BorderRadius.circular(radius_15)),
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
                    width: width_20,
                  ),
                  Container(
                    padding: EdgeInsets.all(margin_6),
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(radius_15)),
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
                  )
                ],
              ),
            ),
          ]),
        ));
  }

  Widget customSearchRow() {
    return Row(
      children: [
        Expanded(
            flex: 4,
            child: CustomTextField(
                labelText: strSearch,
                prefixIcon: Icon(Icons.search),
                obscure: false,
                height: height_10,
                textInputType: TextInputType.text)),
        Spacer(),
        Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  CustomText(
                      text: strOverview,
                      color1: AppColors.darkBlue,
                      fontWeight: fontWeight700,
                      fontSize: font_3),
                  CustomDivider(
                    height: height_5,
                  ),
                  CustomText(
                      text: strStatistics,
                      color1: AppColors.greyColor,
                      fontWeight: fontWeight400,
                      fontSize: font_3),
                ],
              ),
            ),
            Expanded(
              child: CircleAvatar(
                backgroundColor: Colors.pink,
                radius: radius_20,
              ),
            )
          ],
        )),
      ],
    );
  }
}

// class Overview extends StatelessWidget {
//   Overview({super.key});
//
//   final List<String> items = [
//     'Item1',
//     'Item2',
//     'Item3',
//     'Item4',
//     'Item5',
//     'Item6',
//     'Item7',
//     'Item8',
//   ];
//   String? selectedValue;
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           flex: 2,
//           child: Container(
//             padding: EdgeInsets.all(margin_5),
//             //height: height_300,
//             //width: 300,
//             decoration: BoxDecoration(
//                 color: AppColors.greyColor.withOpacity(.1),
//                 borderRadius: BorderRadius.circular(radius_15)),
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             CustomText(
//                                 text: strStatistics,
//                                 color1: AppColors.greyColor,
//                                 fontWeight: fontWeight400,
//                                 fontSize: font_3),
//                             CustomDivider(
//                               height: height_5,
//                             ),
//                             CustomText(
//                                 text: strOverview,
//                                 color1: AppColors.darkBlue,
//                                 fontWeight: fontWeight700,
//                                 fontSize: font_5),
//                           ],
//                         ),
//                       ),
//                       Expanded(
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: margin_5),
//                           decoration: BoxDecoration(
//                               color: AppColors.blue,
//                               borderRadius: BorderRadius.circular(radius_25)),
//                           child: FittedBox(
//                             child: DropdownButton(
//                                 underline: Container(),
//                                 hint: Text(
//                                   'Last 1 months',
//                                   style: TextStyle(
//                                       fontSize: font_4,
//                                       fontWeight: fontWeight400,
//                                       color: AppColors.white,
//                                       fontFamily: 'Metropolis'),
//                                   overflow: TextOverflow.ellipsis,
//                                 ),
//                                 borderRadius: BorderRadius.circular(radius_25),
//                                 dropdownColor: AppColors.blue,
//                                 items: [
//                                   DropdownMenuItem(
//                                     value: 'item',
//                                     child: Text(
//                                       'item',
//                                       style: TextStyle(
//                                           fontSize: font_4,
//                                           fontWeight: fontWeight400,
//                                           color: AppColors.white,
//                                           fontFamily: 'Metropolis'),
//                                       overflow: TextOverflow.ellipsis,
//                                     ),
//                                   ),
//                                   DropdownMenuItem(
//                                     value: 'zone',
//                                     child: Text(
//                                       'zone',
//                                       style: TextStyle(
//                                           fontSize: font_4,
//                                           fontWeight: fontWeight400,
//                                           color: AppColors.white,
//                                           fontFamily: 'Metropolis'),
//                                       overflow: TextOverflow.ellipsis,
//                                     ),
//                                   ),
//                                 ],
//                                 onChanged: (value) {}),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                   CustomDivider(
//                     height: height_20,
//                   ),
//                   Container(
//                     alignment: Alignment.center,
//                     padding: EdgeInsets.symmetric(horizontal: margin_5, vertical: margin_20),
//                     decoration: BoxDecoration(
//                       color: AppColors.white,
//                       borderRadius: BorderRadius.circular(radius_15)
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             CustomText(
//                                 text: strTotalPayRec,
//                                 color1: AppColors.greyColor,
//                                 fontWeight: fontWeight500,
//                                 fontSize: font_4),
//                             CustomDivider(
//                               height: height_5,
//                             ),
//                             CustomText(
//                                 text: '\$200.45',
//                                 color1: AppColors.darkBlue,
//                                 fontWeight: fontWeight700,
//                                 fontSize: font_5),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   CustomDivider(
//                     height: height_20,
//                   ),
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Container(
//                           padding: EdgeInsets.all(margin_6),
//                           decoration: BoxDecoration(
//                             color: AppColors.white,
//                             borderRadius: BorderRadius.circular(radius_15)
//                           ),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Image.asset(
//                                 ImgAssets.kioskCard,
//                                 height: height_50,
//                                 color: AppColors.darkBlue,
//                               ),
//                               CustomDivider(
//                                 height: height_5,
//                               ),
//                               CustomText(
//                                   text: '\$234.33',
//                                   color1: AppColors.darkBlue,
//                                   fontWeight: fontWeight700,
//                                   fontSize: font_5),
//                               CustomDivider(
//                                 height: height_5,
//                               ),
//                               CustomText(
//                                   text: strCardPay,
//                                   color1: AppColors.greyColor,
//                                   fontWeight: fontWeight400,
//                                   fontSize: font_3),
//                             ],
//                           ),
//                         ),
//                         CustomDivider(
//                           width: width_20,
//                         ),
//                         Container(
//                           padding: EdgeInsets.all(margin_6),
//                           decoration: BoxDecoration(
//                               color: AppColors.white,
//                               borderRadius: BorderRadius.circular(radius_15)
//                           ),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Image.asset(
//                                 ImgAssets.kioskCash,
//                                 height: height_50,
//                                 color: AppColors.darkBlue,
//                               ),
//                               CustomDivider(
//                                 height: height_5,
//                               ),
//                               CustomText(
//                                   text: '\$234.33',
//                                   color1: AppColors.darkBlue,
//                                   fontWeight: fontWeight700,
//                                   fontSize: font_5),
//                               CustomDivider(
//                                 height: height_5,
//                               ),
//                               CustomText(
//                                   text: strCashPay,
//                                   color1: AppColors.greyColor,
//                                   fontWeight: fontWeight400,
//                                   fontSize: font_3),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         CustomDivider(
//           width: width_30,
//         ),
//         Expanded(
//           flex: 3,
//           child: Container(
//             alignment: Alignment.topCenter,
//             height: 500,
//             //width: 300,
//             decoration: BoxDecoration(
//                 color: Colors.red,
//                 borderRadius: BorderRadius.circular(radius_15)),
//             child: ListView(
//               children: [
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           CustomText(
//                               text: strStatistics,
//                               color1: AppColors.greyColor,
//                               fontWeight: fontWeight400,
//                               fontSize: font_3),
//                           CustomDivider(
//                             height: height_5,
//                           ),
//                           CustomText(
//                               text: strOverview,
//                               color1: AppColors.darkBlue,
//                               fontWeight: fontWeight700,
//                               fontSize: font_5),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.symmetric(horizontal: margin_5),
//                       decoration: BoxDecoration(
//                           color: AppColors.blue,
//                           borderRadius: BorderRadius.circular(radius_25)),
//                       child: FittedBox(
//                         child: DropdownButton(
//                             underline: Container(),
//                             hint: Text(
//                               'Last 1 months',
//                               style: TextStyle(
//                                   fontSize: font_4,
//                                   fontWeight: fontWeight400,
//                                   color: AppColors.white,
//                                   fontFamily: 'Metropolis'),
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                             borderRadius: BorderRadius.circular(radius_25),
//                             dropdownColor: AppColors.blue,
//                             items: [
//                               DropdownMenuItem(
//                                 value: 'item',
//                                 child: Text(
//                                   'item',
//                                   style: TextStyle(
//                                       fontSize: font_4,
//                                       fontWeight: fontWeight400,
//                                       color: AppColors.white,
//                                       fontFamily: 'Metropolis'),
//                                   overflow: TextOverflow.ellipsis,
//                                 ),
//                               ),
//                               DropdownMenuItem(
//                                 value: 'zone',
//                                 child: Text(
//                                   'zone',
//                                   style: TextStyle(
//                                       fontSize: font_4,
//                                       fontWeight: fontWeight400,
//                                       color: AppColors.white,
//                                       fontFamily: 'Metropolis'),
//                                   overflow: TextOverflow.ellipsis,
//                                 ),
//                               ),
//                             ],
//                             onChanged: (value) {}),
//                       ),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// CustomText(
// text: strStatistics,
// color1: AppColors.greyColor,
// fontWeight: fontWeight400,
// fontSize: font_3),
// CustomDivider(
// height: height_5,
// ),
// CustomText(
// text: strOverview,
// color1: AppColors.darkBlue,
// fontWeight: fontWeight700,
// fontSize: font_5),
// ],
// ),
// Spacer(),
// Container(
// height: height_25,
// padding: EdgeInsets.symmetric(horizontal: margin_5),
// decoration: BoxDecoration(
// color: AppColors.blue,
// borderRadius: BorderRadius.circular(radius_25)),
// child: DropdownButton(
// underline: Container(),
// hint: Text(
// 'Last 1 months',
// style: TextStyle(
// fontSize: font_4,
// fontWeight: fontWeight400,
// color: AppColors.white,
// fontFamily: 'Metropolis'),
// overflow: TextOverflow.ellipsis,
// ),
// borderRadius: BorderRadius.circular(radius_25),
// dropdownColor: AppColors.blue,
// items: [
// DropdownMenuItem(
// value: 'item',
// child: Text(
// 'item',
// style: TextStyle(
// fontSize: font_4,
// fontWeight: fontWeight400,
// color: AppColors.white,
// fontFamily: 'Metropolis'),
// overflow: TextOverflow.ellipsis,
// ),
// ),
// DropdownMenuItem(
// value: 'zone',
// child: Text(
// 'zone',
// style: TextStyle(
// fontSize: font_4,
// fontWeight: fontWeight400,
// color: AppColors.white,
// fontFamily: 'Metropolis'),
// overflow: TextOverflow.ellipsis,
// ),
// ),
// ],
// onChanged: (value) {}),
// )
