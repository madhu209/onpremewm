import 'package:flutter/material.dart';
import 'package:onpremewm/constants/colors.dart';
import 'package:onpremewm/mainviews/cells/productcard.dart';
import 'package:onpremewm/mainviews/cells/producttitle.dart';
import 'package:onpremewm/mainviews/loginview.dart';
import 'package:onpremewm/network/inventorynetworkcontroller.dart';
import 'package:onpremewm/network/models/responseavailablestock.dart';
import 'package:onpremewm/network/models/responsephysicalstock.dart';

class InventoryProductStockListView extends StatefulWidget {
  const InventoryProductStockListView(
      {required this.isFromProduct, required this.productName, super.key});

  final bool isFromProduct;
  final String productName;

  @override
  State<StatefulWidget> createState() {
    return InventoryProductStockListViewState();
  }
}

class InventoryProductStockListViewState
    extends State<InventoryProductStockListView> {
  List<StockValue> availableStockList = [];
  List<StockValue> physicalStockList = [];

  List<ProductsStockList> allProductsStockList = [];

  @override
  void initState() {
    super.initState();
    getProductsAvailableStockList();
    getProductsPhysicalStockList();
  }

  Future<ResponseAvailableStock> getProductsAvailableStockList() async {
    try {
      Map<String, dynamic> parameters = {
        '\$filter':
            "EWMWarehouse eq '${stateController.userData.warehouseNumber}' and Product eq '${widget.productName}'"
      };
      var data = await InventoryNetworkController()
          .getProductsAvailableStockList({}, parameters);
      var response = ResponseAvailableStock.fromJson(data);
      setState(() {
        availableStockList = response.availableStock;
      });
      return response;
    } catch (error) {
      throw error.toString();
    }
  }

  Future<ResponsePhysicalStock> getProductsPhysicalStockList() async {
    try {
      Map<String, dynamic> parameters = {
        '\$filter':
            "EWMWarehouse eq '${stateController.userData.warehouseNumber}' and Product eq '${widget.productName}'"
      };
      var data = await InventoryNetworkController()
          .getProductsPhysicalStockList({}, parameters);
      var response = ResponsePhysicalStock.fromJson(data);
      setState(() {
        physicalStockList = response.stockValue;
        getUniqueStorageBins();
      });
      return response;
    } catch (error) {
      throw error.toString();
    }
  }

  void getUniqueStorageBins() {
    final List<String> availableStorageBinList =
        availableStockList.map((e) => e.ewmStorageBin.toString()).toList();
    // ignore: avoid_print
    // print(availableStorageBinList);

    final List<String> physicalStorageBinList =
        physicalStockList.map((e) => e.ewmStorageBin.toString()).toList();
    // ignore: avoid_print
    // print(physicalStorageBinList);

    var storageBinList = availableStorageBinList + physicalStorageBinList;
    // ignore: avoid_print
    print(storageBinList);

    storageBinList = Set<String>.from(storageBinList)
        .where((value) => value.isNotEmpty)
        .toList(); // storageBinList.toSet().toList();

    List<StockValue> storageBasedStockList = [];

    for (var storageBinName in storageBinList) {
      /* for retriving the available stock based on Storage Bin Name */
      storageBasedStockList = [];
      for (var stock in availableStockList) {
        if (storageBinName == stock.ewmStorageBin) {
          storageBasedStockList.add(stock);
        }
      }

      /* for retriving the physical stock based on Storage Bin Name */
      storageBasedStockList = [];
      for (var stock in physicalStockList) {
        if (storageBinName == stock.ewmStorageBin) {
          storageBasedStockList.add(stock);
        }
      }

// Binging to Model
      var productsStock = ProductsStockList(
          storageBinName: storageBinName,
          availableStocks: storageBasedStockList,
          physicalStocks: storageBasedStockList);

// Adding model to main array
      allProductsStockList.add(productsStock);
    }
  }

// filter=EWMWarehouse eq '1710' and Product eq 'EWMS4-31'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          'Warehouse: ${stateController.userData.warehouseNumber}'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          ProductTitle(titleName: "Product", productName: widget.productName),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: totalStockInfo(
                true,
                'Total Physical Stock',
                '${physicalStockList.length}',
                'Total Available Stock',
                '${availableStockList.length}'),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              color: Colors.grey.withAlpha(20),
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: ListView.builder(
                  itemCount: allProductsStockList
                      .length, // widget.isFromProduct ? storageBinList.length : 5,
                  itemBuilder: (context, index) {
                    return Container(
                      // color: Colors.white,
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: ProductCard(
                          productStock: allProductsStockList[index]),
                    );
                    // return widget.isFromProduct
                    //     ? ProductCard(productStock: allProductsStockList[index])
                    //     : StorageCard(stockValue: stockValue) ;
                  },
                ),
              ),
            ),
          )
        ],
      ),
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

/*

GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ProductListView()));
                          },
                          child: ProductCard(
                              productStockList: allProductsStockList[index]),
                        

*/