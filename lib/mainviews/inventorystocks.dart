import 'package:flutter/material.dart';
import 'package:onpremewm/constants/colors.dart';
import 'package:onpremewm/mainviews/cells/productcard.dart';
import 'package:onpremewm/mainviews/cells/producttitle.dart';
import 'package:onpremewm/mainviews/cells/storagecard.dart';
import 'package:onpremewm/mainviews/products.dart';

class InventoryStockListView extends StatefulWidget {
  const InventoryStockListView({required this.isFromProduct, super.key});

  final bool isFromProduct;

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
            const ProductTitle(),
            const SizedBox(height: 30),
            totalStockInfo(true, 'Total Physical Stock', '1200',
                'Total Available Stock', '100'),
            const SizedBox(height: 40),
            Expanded(
              child: ListView.builder(
                itemCount: widget.isFromProduct ? 20 : 5,
                itemBuilder: (context, index) {
                  return widget.isFromProduct
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ProductListView()));
                          },
                          child: const ProductCard(),
                        )
                      : const StorageCard();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
