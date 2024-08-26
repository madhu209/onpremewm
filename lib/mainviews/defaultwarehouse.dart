import 'package:flutter/material.dart';
import 'package:onpremewm/constants/colors.dart';
import 'package:onpremewm/constants/constants.dart';
import 'package:onpremewm/mainviews/operationsmenu.dart';
import 'package:onpremewm/mainviews/updatewarehouse.dart';
import 'package:onpremewm/styles/button_style.dart';

class DefaultWareHouse extends StatefulWidget {
  const DefaultWareHouse({super.key});

  @override
  State<StatefulWidget> createState() {
    return DefaultWareHouseState();
  }
}

class DefaultWareHouseState extends State<DefaultWareHouse> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(Constants.selectWareHouseTitle),
      body: Align(
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
            nextButton(),
            const SizedBox(height: 40),
            updateWarehouseButton()
          ],
        ),
      ),
    );
  }
}

extension DefaultWareHouseStateUI on DefaultWareHouseState {
  Widget nextButton() {
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
          child: const Text(Constants.next),
        ),
      ),
    );
  }

  Widget updateWarehouseButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SizedBox(
        width: double.infinity,
        child: TextButton(
          style: updateButtonStyleClearBG(),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const UpdateWareHouse()));
          },
          child: const Text(Constants.updateWarehouse),
        ),
      ),
    );
  }

  ButtonStyle updateButtonStyleClearBG(
      {Color buttonTextColor = ColorConstants.buttonBGColor}) {
    return TextButton.styleFrom(
        foregroundColor: buttonTextColor,
        backgroundColor: Colors.blue.withOpacity(0.0),
        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
        side: const BorderSide(color: Colors.white));
  }
}
