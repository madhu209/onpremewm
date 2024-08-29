import 'package:flutter/material.dart';
import 'package:onpremewm/constants/assets.dart';
import 'package:onpremewm/constants/colors.dart';
import 'package:onpremewm/constants/constants.dart';
import 'package:onpremewm/mainviews/inventorystocks.dart';
import 'package:onpremewm/styles/button_style.dart';
import 'package:onpremewm/views/dialogutils.dart';
import 'package:onpremewm/views/plaintextfield.dart';

class SelectScanType extends StatefulWidget {
  const SelectScanType({super.key});

  @override
  State<StatefulWidget> createState() {
    return SelectScanTypeState();
  }
}

class SelectScanTypeState extends State<SelectScanType> {
  late TextEditingController numberController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  List gender = ["Product", "Storage Bin"];
  late String select;

  @override
  void initState() {
    super.initState();
    numberController = TextEditingController(text: ''); // EWMS4-31
    select = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(Constants.inventoryStock),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Select Scan Type'),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addRadioButton(0, 'Product'),
                  addRadioButton(1, 'Storage Bin')
                ],
              ),
              const SizedBox(height: 20),
              Form(
                key: _formKey,
                child: formFields(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}

extension SelectScanTypeStateUI on SelectScanTypeState {
  Row addRadioButton(int btnValue, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          activeColor: Theme.of(context).primaryColor,
          value: gender[btnValue],
          groupValue: select,
          onChanged: (value) {
            setState(() {
              print(value);
              select = value;
            });
          },
        ),
        Text(title)
      ],
    );
  }

  Widget formFields(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              Assets.barcodeIcon,
              width: 40,
              height: 48,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: PlainTextField(
                  numberController,
                  select == "Product"
                      ? "Enter Product number"
                      : select == ""
                          ? ""
                          : "Enter Storage Bin",
                  false),
            ),
          ],
        ),
        const SizedBox(height: 40),
        getStockInfoButton(context),
      ],
    );
  }

  Widget getStockInfoButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0),
      child: SizedBox(
        width: 150,
        height: 48,
        child: TextButton(
          style: textButtonStyleFill(),
          onPressed: () {
            if (select == "") {
              DialogUtils.displayDialogOKCallBack(context, "Select Scan Type");
            } else {
              if (select == "Product") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InventoryStockListView(
                      isFromProduct: select == "Product" ? true : false,
                      productName: numberController.text,
                    ),
                  ),
                );
              } else {
                DialogUtils.displayDialogOKCallBack(
                    context, "Work in progress");
              }
            }
          },
          child: const Text(Constants.getStockInfo),
        ),
      ),
    );
  }
}
