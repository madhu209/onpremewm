import 'package:flutter/material.dart';

class ColorConstants {
  static const appBGColor = Color.fromRGBO(251, 251, 251, 1);
  static const appBannerBGColor = Color.fromRGBO(241, 241, 241, 1);

  static const buttonBGColor = Color.fromRGBO(12, 58, 93, 1);

  static const appbarTextColor = Colors.white;
  static const appbarBGColor = Color.fromRGBO(12, 58, 93, 1);

  static const loginTextFieldBGColor = Color.fromRGBO(251, 251, 251, 1);
  static const loginTextFieldTextColor = Colors.black;

  static const loginInfoTextColor = Color.fromRGBO(0, 0, 10, 1);

  static const tabBarBGColor = Color.fromRGBO(12, 58, 93, 1);

  static const profileHeaderTextColor = Color.fromRGBO(39, 170, 225, 1);
  static const profileTitleTextColor = Color.fromRGBO(0, 0, 10, 1);
  static const subTitleColor = Color.fromRGBO(0, 0, 0, 0.54);

  static const buttonTextNoBGColor = Color.fromRGBO(125, 125, 125, 1);
  static const buttonCheckInTextColor = Color.fromRGBO(12, 58, 93, 1);
}

PreferredSizeWidget customAppBarActions(
    String title, IconButton rightSideButton,
    {bool showBackButton = true, bool centerTitle = true}) {
  return AppBar(
      automaticallyImplyLeading: showBackButton,
      backgroundColor: ColorConstants.appbarBGColor,
      centerTitle: centerTitle,
      title: Text(
        title,
        style: const TextStyle(color: ColorConstants.appbarTextColor),
      ),
      actions: <Widget>[
        rightSideButton,
      ]);
}

PreferredSizeWidget customAppBarActionsWithCloseOption(
    String title, IconButton rightSideButton, BuildContext context) {
  return AppBar(
      backgroundColor: ColorConstants.appbarBGColor,
      centerTitle: true,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.close),
        //replace with our own icon data.
      ),
      title: Text(
        title,
        style: const TextStyle(color: ColorConstants.appbarTextColor),
      ),
      actions: <Widget>[
        rightSideButton,
      ]);
}

PreferredSizeWidget customAppBar(String title,
    {bool showBackButton = true, bool centerTitle = true}) {
  return AppBar(
    automaticallyImplyLeading: showBackButton,
    backgroundColor: ColorConstants.appbarBGColor,
    centerTitle: centerTitle,
    title: Text(
      title,
      style: const TextStyle(color: ColorConstants.appbarTextColor),
    ),
  );
}
