import 'package:flutter/material.dart';
import 'package:onpremewm/constants/colors.dart';

InputDecoration inputDecorationOfTextField(String hintText,
    {Widget suffixIcon = const SizedBox()}) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
    labelStyle: const TextStyle(color: ColorConstants.loginTextFieldTextColor),
    filled: true,
    suffixIcon: suffixIcon,
    fillColor: ColorConstants.loginTextFieldBGColor,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(5),
    ),
  );
}
