class Constants {
  static const String username = "Username";
  static const String email = "Email";
  static const String password = "Password";
  static const String singIn = "Sing In";

  static const String privacyPolicy = "Privacy Policy";
  static const String privacyPolicyRight = "@2024 Pluto Cloud, Inc";

  static const String next = "Okay, Next";
  static const String update = "Update";
  static const String updateWarehouse =
      "Do you want to change or update Ware house ?";

  static const String selectWareHouseTitle = "Select Warehouse";
  static const String operationsMenuTitle = "Operations Menu";
  static const String updateWareHouseTitle = "Update Warehouse";

  static const String getStockInfo = "Get Stock Info";
}

class HeaderConstans {
  static const String forgotPwdTitle = "Back to Sign In";
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
