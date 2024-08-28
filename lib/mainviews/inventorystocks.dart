import 'package:flutter/material.dart';
import 'package:onpremewm/constants/colors.dart';
import 'package:onpremewm/mainviews/cells/productcard.dart';
import 'package:onpremewm/mainviews/cells/producttitle.dart';
import 'package:onpremewm/mainviews/cells/storagecard.dart';
import 'package:onpremewm/mainviews/loginview.dart';
import 'package:onpremewm/mainviews/products.dart';
import 'package:onpremewm/network/inventorynetworkcontroller.dart';
import 'package:onpremewm/network/models/responseavailablestock.dart';
import 'package:onpremewm/network/models/responsephysicalstock.dart';

class InventoryStockListView extends StatefulWidget {
  const InventoryStockListView({required this.isFromProduct, super.key});

  final bool isFromProduct;

  @override
  State<StatefulWidget> createState() {
    return InventoryStockListViewState();
  }
}

class InventoryStockListViewState extends State<InventoryStockListView> {
  List<AvailableStock> availableStockList = [];
  List<PhysicalStock> physicalStockList = [];

  @override
  void initState() {
    super.initState();
    getProductsAvailableStockList();
    // getProductsPhysicalStockList();
  }

  Future<ResponseAvailableStock> getProductsAvailableStockList() async {
    try {
      Map<String, dynamic> parameters = {
        '\$filter':
            "EWMWarehouse eq '${stateController.userData.warehouseNumber}' and Product eq 'EWMS4-31'"
      };
      var data = await InventoryNetworkController()
          .getProductsAvailableStockList({}, parameters);
      var response = ResponseAvailableStock.fromJson(data);
      setState(() {
        availableStockList = response.availableStock;
      });
      return response;
    } catch (error) {
      print(error.toString());
      throw error.toString();
    }
  }

  // Future<ResponsePhysicalStock> getProductsPhysicalStockList() async {
  //   try {
  //     Map<String, dynamic> parameters = {
  //       '\$filter':
  //           "EWMWarehouse eq '${stateController.userData.warehouseNumber}' and Product eq 'EWMS4-31'"
  //     };
  //     var data = await InventoryNetworkController()
  //         .getProductsPhysicalStockList({}, parameters);
  //     var response = ResponsePhysicalStock.fromJson(data);
  //     setState(() {
  //       physicalStockList = response.physicalStock;
  //     });
  //     return response;
  //   } catch (error) {
  //     print(error.toString());
  //     throw error.toString();
  //   }
  // }

// filter=EWMWarehouse eq '1710' and Product eq 'EWMS4-31'

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
                itemCount: widget.isFromProduct ? availableStockList.length : 5,
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
