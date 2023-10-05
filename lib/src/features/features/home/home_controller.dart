import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payhub/src/core/constants/palette.dart';

class HomeController extends GetxController{
  Rx<Color> containerColor = AppColors.blue.obs; // Initialize with blue color
  Rx<Color> textColor = AppColors.white.obs; // Initialize with blue color

  void changeColor(Color color, Color text) {
    containerColor.value = color;
    textColor.value = text;
  }

  RxBool isContainerSelected = false.obs; // Initialize with false

  void selectContainer() {
    isContainerSelected.value = true;
  }

  void deselectContainer() {
    isContainerSelected.value = false;
  }
}