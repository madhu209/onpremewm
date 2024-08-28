import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        const Text(
          'Goods ISSUE TITLE',
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        totalStockInfo(false, 'Physical Stock', '1', 'Available Stock', '1'),
        const SizedBox(height: 10),
        const Divider(
          color: Colors.black,
        )
      ],
    );
  }
}

Widget totalStockInfo(bool isTotalStock, leftTitle, String leftValue,
    String rightTitle, String rightValue) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        children: [
          Text(leftTitle),
          const SizedBox(height: 5),
          Text(
            leftValue,
            style: TextStyle(
                fontSize: isTotalStock ? 25 : 15, fontWeight: FontWeight.bold),
          )
        ],
      ),
      const Spacer(),
      Column(
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
    ],
  );
}
