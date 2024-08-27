import 'package:flutter/material.dart';
import 'package:onpremewm/constants/colors.dart';

class InventoryStockListView extends StatefulWidget {
  const InventoryStockListView({super.key});

  @override
  State<StatefulWidget> createState() {
    return InventoryStockListViewState();
  }
}

class InventoryStockListViewState extends State<InventoryStockListView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Warehouse:'),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              productTtile(),
              const SizedBox(height: 30),
              totalStockInfo()
            ]),
      ),
    );
  }

  Widget productTtile() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Product:'),
        SizedBox(width: 10),
        Text(
          'Product Name',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Widget totalStockInfo() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text('Total Physical Stock'),
            SizedBox(height: 20),
            Text(
              '1200',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(width: 50),
        Column(
          children: [
            Text('Total Available Stock'),
            SizedBox(
              height: 20,
            ),
            Text(
              '1100',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            )
          ],
        )
      ],
    );
  }
}
