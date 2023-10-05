import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:payhub/src/components/approved_payment.dart';
import 'package:payhub/src/components/bill_details.dart';
import 'package:payhub/src/components/bill_summary.dart';
import 'package:payhub/src/components/confirm_amount.dart';
import 'package:payhub/src/components/custom_bill_num.dart';
import 'package:payhub/src/components/custom_company.dart';
import 'package:payhub/src/components/payment_method_screen.dart';
import 'package:payhub/src/components/prc.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/strings.dart';

import '../core/constants/assets.dart';
import '../core/constants/font_weight.dart';
import '../core/constants/palette.dart';
import 'custom_button.dart';
import 'custom_divider.dart';
import 'custom_home_container.dart';
import 'custom_text.dart';
import 'custom_text_button.dart';
import 'custom_textfield.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    crossAxisCount: 4,
                    mainAxisSpacing: height_20,
                    crossAxisSpacing: width_5),
                children: [
                  // for(int i=1; i<20; i++)
                  CustomHomeContainer(
                    image: ImgAssets.utilityIcon,
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
                    image: ImgAssets.gasIcon,
                    text: strGas,
                    onTap: () {},
                  ),
                  CustomHomeContainer(
                    image: ImgAssets.waterIcon,
                    text: strWater,
                    onTap: () {},
                  ),
                  CustomHomeContainer(
                    image: ImgAssets.telecomIcon,
                    text: strTelecommunications,
                    onTap: () {},
                  ),
                  CustomHomeContainer(
                    image: ImgAssets.strataIcon,
                    text: strStrata,
                    onTap: () {},
                  ),
                  CustomHomeContainer(
                    image: ImgAssets.insuranceIcon,
                    text: strInsurance,
                    onTap: () {},
                  ),
                  CustomHomeContainer(
                    image: ImgAssets.pensionIcon,
                    text: strPension,
                    onTap: () {},
                  ),
                  CustomHomeContainer(
                    image: ImgAssets.energyIcon,
                    text: strEnergy,
                    onTap: () {},
                  ),
                  CustomHomeContainer(
                    image: ImgAssets.bankIcon,
                    text: strBank,
                    onTap: () {},
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class BrandName extends StatefulWidget {
  const BrandName({super.key});

  @override
  State<BrandName> createState() => _BrandNameState();
}

class _BrandNameState extends State<BrandName> {
  int _currentScreenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        icon: Align(
            alignment: Alignment.topRight,
            child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.cancel_outlined))),
        content: Wrap(
          spacing: 20,
          children: [
            _buildCurrentScreen(
                onTap: () {
                  _showNextScreen();
                },
                onTapBillNo: () {
                  _showNextScreen();
                },
                onTapBillDetail: () {
                  _showNextScreen();
                },
                onTapBillSummary: () {
                  _showNextScreen();
                },
                onTapBillMethod: () {
                  _showNextScreen();
                },
                onTapConfirmAmount: () {
                  _showNextScreen();
                },
                onTapConfirmPayment: () {}, onTapBack: () {
                  _showPreviousScreen();
            }),
          ],
        ));
  }

  Widget _buildCurrentScreen({
    required Function() onTap,
    required Function() onTapBack,
    required Function() onTapBillNo,
    required Function() onTapBillDetail,
    required Function() onTapBillSummary,
    required Function() onTapBillMethod,
    required Function() onTapConfirmAmount,
    required Function() onTapConfirmPayment,
  }) {
    // Return the current screen based on the _currentScreenIndex
    switch (_currentScreenIndex) {
      case 0:
        return Company(onTap: onTap);
      case 1:
        return BillNo(
          onTap: onTapBillNo,
        );
      case 2:
        return BillDetailsScreen(
          onTap: onTapBillDetail,
          onTapBack: onTapBack,
        );
      case 3:
        return BillSummary(
          onTap: onTapBillSummary,
        );
      case 4:
        return PaymentMethod(
          onTap: onTapBillMethod,
        );
      case 5:
        return ConfirmAmount(
          onTap: onTapConfirmAmount,
        );
      case 6:
        return ApprovedPayment(
          onTap: onTapConfirmPayment,
        );

      default:
        return Container(); // Add more cases for additional screens
    }
  }

  void _showNextScreen() {
    // Increment the screen index to switch to the next screen
    setState(() {
      // Increment the screen index to switch to the next screen
      _currentScreenIndex++;
      if (_currentScreenIndex > 6) {
        _currentScreenIndex =
            0; // Reset to the first screen after the last screen
      }
    });
  }
  void _showPreviousScreen() {
    // Increment the screen index to switch to the next screen
    setState(() {
      // Increment the screen index to switch to the next screen
      _currentScreenIndex--;
      if (_currentScreenIndex < 6) {
        _currentScreenIndex = _currentScreenIndex--; // Reset to the first screen after the last screen
      }
    });
  }
}
