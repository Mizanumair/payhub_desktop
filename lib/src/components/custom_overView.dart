import 'package:decorated_dropdownbutton/decorated_dropdownbutton.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:payhub/src/components/custom_transaction.dart';
import '../core/constants/assets.dart';
import '../core/constants/dimensions.dart';
import '../core/constants/font_weight.dart';
import '../core/constants/palette.dart';
import '../core/constants/strings.dart';
import 'custom_divider.dart';
import 'custom_fl_chart.dart';
import 'custom_text.dart';
import 'custom_textfield.dart';

class CustomOverView extends StatefulWidget {
  const CustomOverView({super.key});

  @override
  State<CustomOverView> createState() => _CustomOverViewState();
}

class _CustomOverViewState extends State<CustomOverView> {



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1200,
      height: 1000,
     // color: Colors.cyanAccent,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: margin_10),
        children: [
          searchRow(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomDivider(
                height: height_5,
              ),
              CustomText(
                  text: strTotalPayRec,
                  color1: AppColors.greyColor,
                  fontWeight: fontWeight600,
                  fontSize: font_7),
              CustomDivider(
                height: height_8,
              ),
              CustomText(
                  text: '\$15,000',
                  color1: AppColors.darkBlue,
                  fontWeight: fontWeight600,
                  fontSize: font_8),
            ],
          ),

          CustomDivider(
            height: height_40,
          ),

      SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
              alignment: Alignment.topLeft,
              //width: 1400,
              //height: 700,
              decoration: BoxDecoration(
                //     color: Colors.red,
                  borderRadius: BorderRadius.circular(radius_10),
                  border: Border.all(color: AppColors.greyColor.withOpacity(.4))
              ),
              //color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 1,
                    color: AppColors.greyColor.withOpacity(.2),
                  ),
                  RowTransactionList(
                    sNo: strSno,
                    customerName: strCustomerName,
                    category: strCategory,
                    vendor: strVendor,
                    billNo: strBillNo,
                    amountPaid: strAmountPaid,
                    customerMobile: strCustomerMobile,
                    emailId: strEmailId,
                    govtIdType: strGovtIdType,
                    govtIdNumber: strGovIdNumber,
                    action: strAction,
                    icon: false,
                  ),
                  for (int i = 0; i < 20; i++)
                    RowTransactionList(
                      sNo: 'Hey SN',
                      customerName: 'CName',
                      category: 'Catg',
                      vendor: 'Vendooo',
                      billNo: 'BillNoooo',
                      amountPaid: 'Amnt Paid',
                      customerMobile: 'Cstm Mob',
                      emailId: 'For Email',
                      govtIdType: 'Govt cus id',
                      govtIdNumber: 'Gov number',
                      action: 'ac',
                      icon: true,
                    ),
                ],
              ), // Replace with your item widget
          )),
        ],
      ),
    );
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
              flex: 3,
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
          Container(
            alignment: Alignment.topLeft,
            child: CircleAvatar(
              backgroundColor: Colors.yellow,
              radius: radius_20,
            ),
          ),
        ],
      ),
    );
  }
}
