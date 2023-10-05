import 'package:flutter/material.dart';
import 'package:payhub/src/components/custom_divider.dart';
import 'package:payhub/src/components/custom_text.dart';
import 'package:payhub/src/components/custom_text_button.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/font_weight.dart';
import 'package:payhub/src/core/constants/palette.dart';
import 'package:payhub/src/core/constants/strings.dart';

import '../../../components/custom_row_text_transaction.dart';

class CustomTransaction extends StatelessWidget {
  CustomTransaction({super.key});

  List<String> head = [
    'Sno',
    'Customer Name',
    'Category',
    'Vendor',
    'Bill No',
    'Amount Paid',
    'Customer Mobile',
    'Email ID',
    'Govt ID Type',
    'Govt ID Number',
    'Action'
  ];
  List<String> detail = [
    '1',
    'Brooklyn Simmons',
    'Utility company',
    'Cayman Island\nDevelopment bank',
    '11230978045643',
    '\$500',
    '+91 212 456 7890',
    'your@gmail.com',
    'Pan Card',
    '123456789045',
    'Action'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                  width: 1547,
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
            ) // Replace with your item widget
            ));
  }
}

class RowTransactionList extends StatelessWidget {
  const RowTransactionList({
    Key? key,
    required this.sNo,
    required this.customerName,
    required this.category,
    required this.vendor,
    required this.billNo,
    required this.amountPaid,
    required this.customerMobile,
    required this.emailId,
    required this.govtIdType,
    required this.govtIdNumber,
    required this.action,
    required this.icon,
  }) : super(key: key);

  final String sNo;
  final String customerName;
  final String category;
  final String vendor;
  final String billNo;
  final String amountPaid;
  final String customerMobile;
  final String emailId;
  final String govtIdType;
  final String govtIdNumber;
  final String action;
  final bool icon;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomRowTransactionText(
                textAlign: TextAlign.center,
                text: sNo,
                color1: AppColors.darkBlue,
                fontWeight: icon == true ? fontWeight500 : fontWeight700,
                fontSize: icon == true ? font_3 : font_4),
            CustomRowTransactionText(
                textAlign: TextAlign.center,
                text: customerName,
                color1: AppColors.darkBlue,
                fontWeight: icon == true ? fontWeight500 : fontWeight700,
                fontSize: icon == true ? font_3 : font_4),
            CustomRowTransactionText(
                textAlign: TextAlign.center,
                text: category,
                color1: AppColors.darkBlue,
                fontWeight: icon == true ? fontWeight500 : fontWeight700,
                fontSize: icon == true ? font_3 : font_4),
            CustomRowTransactionText(
                textAlign: TextAlign.center,
                text: vendor,
                color1: AppColors.darkBlue,
                fontWeight: icon == true ? fontWeight500 : fontWeight700,
                fontSize: icon == true ? font_3 : font_4),
            CustomRowTransactionText(
                textAlign: TextAlign.center,
                text: billNo,
                color1: AppColors.darkBlue,
                fontWeight: icon == true ? fontWeight500 : fontWeight700,
                fontSize: icon == true ? font_3 : font_4),
            CustomRowTransactionText(
                textAlign: TextAlign.center,
                text: amountPaid,
                color1: AppColors.darkBlue,
                fontWeight: icon == true ? fontWeight700 : fontWeight700,
                fontSize: icon == true ? font_3 : font_4),
            CustomRowTransactionText(
                textAlign: TextAlign.center,
                text: customerMobile,
                color1: AppColors.darkBlue,
                fontWeight: icon == true ? fontWeight500 : fontWeight700,
                fontSize: icon == true ? font_3 : font_4),
            CustomRowTransactionText(
                textAlign: TextAlign.center,
                text: emailId,
                color1: AppColors.darkBlue,
                fontWeight: icon == true ? fontWeight500 : fontWeight700,
                fontSize: icon == true ? font_3 : font_4),
            CustomRowTransactionText(
                textAlign: TextAlign.center,
                text: govtIdType,
                color1: AppColors.darkBlue,
                fontWeight: icon == true ? fontWeight500 : fontWeight700,
                fontSize: icon == true ? font_3 : font_4),
            CustomRowTransactionText(
                textAlign: TextAlign.center,
                text: govtIdNumber,
                color1: AppColors.darkBlue,
                fontWeight: icon == true ? fontWeight500 : fontWeight700,
                fontSize: icon == true ? font_3 : font_4),
            icon == true
                ? Container(
                    alignment: Alignment.center,
                   // padding: EdgeInsets.symmetric(vertical: 20),
                    //height: height_20,
                    width: width_40,
                    // decoration: BoxDecoration(
                    //     border: Border(
                    //         left: BorderSide(
                    //             color: AppColors.greyColor.withOpacity(.2)),
                    //         right: BorderSide(
                    //             color: AppColors.greyColor.withOpacity(.2)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.access_time_outlined))
                      ],
                    ),
                  )
                : CustomRowTransactionText(
                    textAlign: TextAlign.center,
                    text: action,
                    color1: AppColors.darkBlue,
                    fontWeight: fontWeight700,
                    fontSize: font_4),
          ],
        ),
        Container(
          height: 1,
          width: 1547,
          color: AppColors.greyColor.withOpacity(.2),
        ),
      ],
    );
  }
}

class RowTransaction extends StatelessWidget {
  const RowTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: CustomText(
            text: strTransactions,
            color1: AppColors.darkBlue,
            fontWeight: fontWeight700,
            fontSize: font_5,
            textAlign: TextAlign.left,
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.topRight,
            child: CustomTextButton(
                text: strViewAll,
                color: AppColors.blue,
                fontWeight: fontWeight600,
                font: font_4,
                onPress: () {}),
          ),
        )
      ],
    );
  }
}
