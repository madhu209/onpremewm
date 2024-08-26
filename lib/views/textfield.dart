import 'package:flutter/material.dart';
import 'package:onpremewm/constants/constants.dart';

/* - - - - - - - - - - Email Text Field - - - - - - - - - - */
class EmailTextField extends StatefulWidget {
  const EmailTextField(this.textFieldController, {super.key});
  final TextEditingController textFieldController;

  @override
  State<StatefulWidget> createState() {
    return EmailTextFieldState();
  }
}

class EmailTextFieldState extends State<EmailTextField> {
  @override
  Widget build(context) {
    return TextFormField(
      controller: widget.textFieldController,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      validator: (value) => validateEmail(value!),
      decoration: const InputDecoration(
        contentPadding:
            EdgeInsets.only(top: -10, bottom: -10, left: 10, right: 10),
        border: OutlineInputBorder(),
        labelText: Constants.email,
        prefixIcon: Icon(Icons.email),
      ),
    );
  }

  String? validateEmail(String value) {
    if (value.isEmpty) {
      return "Email ID should not be empty";
    } else if (value.isValidEmail() == false) {
      return "Email ID is not valid";
    } else {
      return null;
    }
  }
}

/* - - - - - - - - - - Password Text Field - - - - - - - - - - */

class PasswordTF extends StatefulWidget {
  const PasswordTF(this.textFieldController, this.placeholder, {super.key});
  final TextEditingController textFieldController;
  final String placeholder;

  @override
  State<StatefulWidget> createState() {
    return PasswordTFState();
  }
}

class PasswordTFState extends State<PasswordTF> {
  bool pwdInVisible = true;
  @override
  Widget build(context) {
    return TextFormField(
      controller: widget.textFieldController,
      textInputAction: TextInputAction.next,
      validator: (value) => validatePassword(value!),
      obscureText: pwdInVisible,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.only(top: -10, bottom: -10, left: 10, right: 10),
        border: const OutlineInputBorder(),
        labelText: widget.placeholder,
        prefixIcon: const Icon(Icons.password),
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                pwdInVisible = !pwdInVisible;
              });
            },
            icon: Icon(pwdInVisible ? Icons.visibility : Icons.visibility_off)),
      ),
    );
  }

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return "${widget.placeholder} should not be empty";
    } else if (value.length < 6) {
      return "${widget.placeholder} should be atleast 6 characters";
    } else if (value.length > 15) {
      return "${widget.placeholder} should not be greater than 15 characters";
    } else {
      return null;
    }
  }
}
