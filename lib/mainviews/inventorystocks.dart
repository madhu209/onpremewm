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
        padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              productTtile(),
              const SizedBox(height: 30),
              totalStockInfo(true, 'Total Physical Stock', '1200',
                  'Total Available Stock', '100'),
              const SizedBox(height: 40),
              const Divider(
                color: Colors.black,
              ),
              SingleChildScrollView(
                child: Column(
                  children: List.generate(20, (index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        const Text(
                          'Goods ISSUE TITLE',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 15),
                        totalStockInfo(false, 'Physical Stock', '1',
                            'Available Stock', '1'),
                        const SizedBox(height: 10),
                        const Divider(
                          color: Colors.black,
                        )
                      ],
                    );
                  }),
                ),
              )
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
                  fontSize: isTotalStock ? 25 : 15,
                  fontWeight: FontWeight.bold),
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
}
