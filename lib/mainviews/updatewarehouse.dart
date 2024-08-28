import 'package:flutter/material.dart';
import 'package:onpremewm/constants/assets.dart';
import 'package:onpremewm/constants/colors.dart';
import 'package:onpremewm/constants/constants.dart';
import 'package:onpremewm/mainviews/loginview.dart';
import 'package:onpremewm/mainviews/operationsmenu.dart';
import 'package:onpremewm/mainviews/warehouselist.dart';
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
        padding: const EdgeInsets.only(left: 20, right: 20, top: 100),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              defaultwarehouseValue(),
              const SizedBox(height: 40),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          Assets.barcodeIcon,
                          width: 40,
                          height: 48,
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: PlainTextField(
                              numberController, "Enter warehouse no", false),
                        ),
                        const SizedBox(width: 10),
                        IconButton.filled(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WareHouseList(),
                                ));
                          },
                          icon: const Icon(Icons.search),
                        )
                        // const Icon(Icons.search)
                      ],
                    ),
                    const SizedBox(height: 50),
                    updateButton(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

extension UpdateWareHouseStateUI on UpdateWareHouseState {
  Widget defaultwarehouseValue() {
    return Column(
      children: [
        const Text('Your Default Warehouse No is,'),
        Text(
          stateController.userData.warehouseNumber,
          style: const TextStyle(
              color: Colors.black, fontSize: 60, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

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
