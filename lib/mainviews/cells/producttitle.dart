import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  ProductTitle({required this.titleName, required this.productName, super.key});

  String titleName;
  String productName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$titleName:'),
        const SizedBox(width: 10),
        Text(
          productName,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
