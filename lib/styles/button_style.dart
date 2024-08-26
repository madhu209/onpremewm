import 'package:flutter/material.dart';
import 'package:onpremewm/constants/colors.dart';

ButtonStyle textButtonStyleClearBG(
    {Color buttonTextColor = ColorConstants.buttonBGColor}) {
  return TextButton.styleFrom(
      fixedSize: const Size(double.infinity, 40),
      foregroundColor: buttonTextColor,
      backgroundColor: Colors.blue.withOpacity(0.0),
      textStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
      side: const BorderSide(color: Colors.white));
}

ButtonStyle textButtonStyleFill() {
  return TextButton.styleFrom(
      fixedSize: const Size(double.infinity, 40),
      foregroundColor: Colors.white,
      backgroundColor: ColorConstants.buttonBGColor,
      textStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)));
}
