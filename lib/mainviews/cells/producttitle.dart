import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  ProductTitle({required this.productName, super.key});

  String productName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Product:'),
        const SizedBox(width: 10),
        Text(
          productName,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
