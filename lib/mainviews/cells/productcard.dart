import 'package:flutter/material.dart';
import 'package:onpremewm/mainviews/products.dart';
import 'package:onpremewm/network/models/responsephysicalstock.dart';
import 'package:onpremewm/views/dialogutils.dart';

// ignore: must_be_immutable
class ProductCard extends StatelessWidget {
  ProductCard({required this.productStock, super.key});

  ProductsStockList productStock;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Text(
          productStock.storageBinName,
          style: const TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        totalStockInfo(
            context,
            false,
            'Physical Stock',
            '${productStock.availableStocks.length}',
            'Available Stock',
            '${productStock.physicalStocks.length}'),
        const SizedBox(height: 10),
        const Divider(
          color: Colors.black,
        )
      ],
    );
  }

  Widget totalStockInfo(BuildContext context, bool isTotalStock, leftTitle,
      String leftValue, String rightTitle, String rightValue) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            if (leftValue != "0") {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductListView(
                          productName: productStock.storageBinName,
                          stockList: productStock.availableStocks)));
            } else {
              DialogUtils.displayDialogOKCallBack(
                  context, "Products not available");
            }
          },
          child: Column(
            children: [
              Text(leftTitle),
              const SizedBox(height: 5),
              Text(
                leftValue,
                style: TextStyle(
                    fontSize: isTotalStock ? 25 : 15,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            if (leftValue != "0") {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductListView(
                          productName: productStock.storageBinName,
                          stockList: productStock.physicalStocks)));
            } else {
              DialogUtils.displayDialogOKCallBack(
                  context, "Products not available");
            }
          },
          child: Column(
            children: [
              Text(rightTitle),
              const SizedBox(
                height: 5,
              ),
              Text(
                rightValue,
                style: TextStyle(
                    fontSize: isTotalStock ? 25 : 15,
                    fontWeight: FontWeight.bold,
                    color: isTotalStock ? Colors.green : Colors.black),
              )
            ],
          ),
        ),
      ],
    );
  }
}
