import 'package:flutter/material.dart';

/* - - - - - - - - - - Password Text Field - - - - - - - - - - */
class PlainTextField extends StatefulWidget {
  const PlainTextField(this.textFieldController, this.placeholder, {super.key});
  final TextEditingController textFieldController;
  final String placeholder;

  @override
  State<StatefulWidget> createState() {
    return PlainTextFieldState();
  }
}

class PlainTextFieldState extends State<PlainTextField> {
  @override
  Widget build(context) {
    return TextFormField(
      controller: widget.textFieldController,
      textInputAction: TextInputAction.next,
      validator: (value) => validateField(value!),
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.only(top: -10, bottom: -10, left: 10, right: 10),
          border: const OutlineInputBorder(),
          labelText: widget.placeholder,
          prefixIcon: const Icon(
            Icons.supervised_user_circle,
            color: Colors.black,
          )),
    );
  }

  String? validateField(String value) {
    if (value.isEmpty) {
      return "${widget.placeholder} should not be empty";
    } else {
      return null;
    }
  }
}
