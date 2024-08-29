import 'package:flutter/material.dart';
import 'package:onpremewm/network/models/responseavailablestock.dart';

class StorageCard extends StatelessWidget {
  StorageCard({required this.stockValue, super.key});

  StockValue stockValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  stockValue.handlingUnit ?? "",
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(
                  stockValue.goodsReceiptUtcDateTime ?? "",
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.normal),
                ),
                const SizedBox(height: 5),
                Text(
                  "Batch:  ${stockValue.batch == "" ? "NA" : stockValue.batch}",
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.normal),
                ),
                const SizedBox(height: 5),
                Text(
                  stockValue.ewmStorageType,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.normal),
                )
              ],
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              child: Text(
                  '${stockValue.quantity} ${stockValue.ewmStockQuantityBaseUnit}'),
            )
          ],
        ),
        const Divider(color: Colors.black)
      ],
    );
  }
}
