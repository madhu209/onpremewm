import 'package:flutter/material.dart';
import 'package:onpremewm/constants/colors.dart';
import 'package:onpremewm/constants/constants.dart';
import 'package:onpremewm/mainviews/operationsmenu.dart';
import 'package:onpremewm/styles/button_style.dart';
import 'package:onpremewm/views/plaintextfield.dart';

class UpdateWareHouse extends StatefulWidget {
  const UpdateWareHouse({super.key});

  @override
  State<StatefulWidget> createState() {
    return UpdateWareHouseState();
  }
}

class UpdateWareHouseState extends State<UpdateWareHouse> {
  late TextEditingController numberController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    numberController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(Constants.updateWareHouseTitle),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Your Default Warehouse No is,'),
              const Text(
                '1000',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),

              Form(
                key: _formKey,
                child: Column(
                  children: [
                    PlainTextField(numberController, "Username"),
                    const SizedBox(height: 20),
                    updateButton(),
                  ],
                ),
              )

              // Row(
              //   children: [PlainTextField(numberController, "Warehouse")],
              // ),
              // updateButton(),
              // const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

extension UpdateWareHouseStateUI on UpdateWareHouseState {
  Widget updateButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0),
      child: SizedBox(
        width: 150,
        height: 48,
        child: TextButton(
          style: textButtonStyleFill(),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const OperationsMenu()));
          },
          child: const Text(Constants.update),
        ),
      ),
    );
  }
}
