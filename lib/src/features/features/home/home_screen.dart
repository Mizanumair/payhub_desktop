import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payhub/src/components/custom_overView.dart';
import 'package:payhub/src/components/custom_payBill.dart';
import 'package:payhub/src/components/custom_search_row.dart';
import 'package:payhub/src/components/custom_textfield.dart';
import 'package:payhub/src/components/custome_home_bar.dart';
import 'package:payhub/src/components/homenavbar.dart';
import 'package:payhub/src/components/overview.dart';
import 'package:payhub/src/features/features/home/home_controller.dart';
import 'package:simple_sidebar/simple_sidebar.dart';
import 'package:simple_sidebar/simple_sidebar_item.dart';
import '../../../components/custom_divider.dart';
import '../../../components/custom_text.dart';
import '../../../components/custom_transaction.dart';
import '../../../core/constants/assets.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/h_w.dart';
import '../../../core/constants/palette.dart';
import '../../../core/constants/strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isVisible = true;
  bool isVisible2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            HomeNavBar(
              homeTap: () {
                isVisible = !isVisible; // Toggle visibility
                if (isVisible = true) {
                  isVisible2=false;
                }
                setState(() {});
              },
              viewBillTap: () {},
              payBillTap: () {
                isVisible2 =! isVisible2;
                if (isVisible2 = true) {
                  isVisible=false;
                }
                setState(() {});
              },
            ),
            Visibility(visible: isVisible, child: CustomOverView()),
            Visibility(
                visible: isVisible2,
                child: PayBills()),
          ],
        ),
      ),
    );
  }
}
