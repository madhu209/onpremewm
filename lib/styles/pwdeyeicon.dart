import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PwdEyeIcon extends StatefulWidget {
  PwdEyeIcon(this.pwdVisible, {super.key});
  bool pwdVisible;

  @override
  State<StatefulWidget> createState() {
    return PwdEyeIconState();
  }
}

class PwdEyeIconState extends State<PwdEyeIcon> {
  @override
  Widget build(context) {
    return IconButton(
      onPressed: () {
        setState(() {
          widget.pwdVisible = !widget.pwdVisible;
        });
      },
      icon: Icon(widget.pwdVisible ? Icons.visibility : Icons.visibility_off),
    );
  }
}
