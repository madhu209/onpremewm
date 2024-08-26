import 'package:flutter/material.dart';
import 'package:onpremewm/constants/assets.dart';
import 'package:onpremewm/constants/constants.dart';
import 'package:onpremewm/styles/button_style.dart';
import 'package:onpremewm/views/textfield.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginViewState();
  }
}

class LoginViewState extends State<LoginView> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController(text: '');
    passwordController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // const Spacer(),
                    Image.asset(
                      Assets.pluto,
                      width: 200,
                      height: 30,
                    ),
                    const SizedBox(height: 30),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          EmailTextField(emailController),
                          const SizedBox(height: 20),
                          PasswordTF(passwordController, Constants.password),
                          const SizedBox(height: 20),
                          singInButton(),
                        ],
                      ),
                    ),
                    // const Spacer()
                  ]),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,
              color: Colors.black,
              child: const Padding(
                padding: EdgeInsets.only(left: 40, right: 40, bottom: 20),
                child: Row(
                  children: [
                    Text(
                      Constants.privacyPolicy,
                      style: TextStyle(color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      Constants.privacyPolicyRight,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

extension LoginViewStateUI on LoginViewState {
  Widget singInButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0),
      child: SizedBox(
        width: double.infinity,
        height: 48,
        child: TextButton(
          style: textButtonStyleFill(),
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              // ignore: invalid_use_of_protected_member
              setState(() {
                // isLoading = true;
              });
              // try {
              //   responseTokenInfo = await authenticateUser();
              //   accessToken = await getAuthToken();
              //   responseLogin = await loginUser(
              //       emailController.text, passwordController.text);
              //   StateManager().responseLogin = responseLogin;
              //   await UserNetworkController().getUserProfileInfo();
              //   // ignore: invalid_use_of_protected_member
              //   setState(() {
              //     isLoading = false;
              //   });
              //   // ignore: use_build_context_synchronously
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => const XCarrierTabBar()));
              // } catch (error) {
              //   // ignore: invalid_use_of_protected_member
              //   setState(() {
              //     isLoading = false;
              //   });
              //   // ignore: use_build_context_synchronously
              //   DialogUtils.displayDialogOKCallBack(context, error.toString());
              // }
            } else {
              print("Not Validated"); // ignore: avoid_print
            }
          },
          child: const Text(Constants.singIn),
        ),
      ),
    );
  }
}
