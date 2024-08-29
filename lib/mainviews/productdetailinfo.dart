import 'package:flutter/material.dart';
import 'package:onpremewm/constants/colors.dart';
import 'package:onpremewm/network/models/responseavailablestock.dart';

class ProductDetailInfo extends StatefulWidget {
  ProductDetailInfo({required this.stockInfo, super.key});

  StockValue stockInfo;

  @override
  State<StatefulWidget> createState() {
    return ProductDetailInfoState();
  }
}

class ProductDetailInfoState extends State<ProductDetailInfo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Product Details'),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          child: Column(
            children: [
              valueDisplay('Warehouse No', widget.stockInfo.ewmWarehouse),
              valueDisplay('Storage Bin', widget.stockInfo.ewmStorageBin),
              valueDisplay('Product', widget.stockInfo.product),
              valueDisplay('Btach', widget.stockInfo.batch),
              valueDisplay(
                  'Handling Unit', widget.stockInfo.handlingUnit ?? ""),
              valueDisplay('Handling Unit',
                  '${widget.stockInfo.quantity ?? 0} ${widget.stockInfo.ewmStockQuantityBaseUnit}')
            ],
          ),
        ),
      ),
    );
  }

  Widget valueDisplay(String staticValue, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(staticValue),
        const SizedBox(height: 10),
        // Container(
        //   width: double.infinity,
        //   height: 40,
        //   margin: const EdgeInsets.all(15.0),
        //   padding:
        //       const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        //   decoration: BoxDecoration(
        //       border: Border.all(color: Colors.black),
        //       borderRadius: const BorderRadius.all(Radius.circular(5))),
        //   child: Text(value),
        // ),
        SizedBox(
          height: 40,
          child: TextField(
            enabled: false,
            decoration: InputDecoration(
              labelText: value,
              labelStyle: const TextStyle(color: Colors.black),
              fillColor: Colors.red,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3.0),
              ),
              //fillColor: Colors.green
            ),
            readOnly: true,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
