import 'package:flutter/material.dart';
import 'package:onpremewm/constants/colors.dart';
import 'package:onpremewm/mainviews/cells/producttitle.dart';
import 'package:onpremewm/mainviews/cells/storagecard.dart';
import 'package:onpremewm/mainviews/loginview.dart';
import 'package:onpremewm/mainviews/productdetailinfo.dart';
import 'package:onpremewm/network/models/responseavailablestock.dart';

class ProductListView extends StatefulWidget {
  ProductListView(
      {required this.productName, required this.stockList, super.key});

  String productName;
  List<StockValue> stockList = [];

  @override
  State<StatefulWidget> createState() {
    return ProductListViewState();
  }
}

class ProductListViewState extends State<ProductListView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          'Warehouse: ${stateController.userData.warehouseNumber}'),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ProductTitle(productName: widget.productName),
            const SizedBox(height: 40),
            Expanded(
              child: ListView.builder(
                itemCount: widget.stockList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: StorageCard(stockValue: widget.stockList[index]),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailInfo(
                              stockInfo: widget.stockList[index]),
                        ),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
