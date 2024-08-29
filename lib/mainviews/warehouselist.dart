import 'package:flutter/material.dart';
import 'package:onpremewm/constants/colors.dart';
import 'package:onpremewm/mainviews/loginview.dart';
import 'package:onpremewm/network/models/responsewarehouselist.dart';
import 'package:onpremewm/network/warehousenetworkcontroller.dart';

// ignore: must_be_immutable
class WareHouseList extends StatefulWidget {
  WareHouseList({super.key});

  List<Value> warehouseList = [];

  @override
  State<StatefulWidget> createState() {
    return WareHouseListState();
  }
}

class WareHouseListState extends State<WareHouseList> {
  @override
  void initState() {
    super.initState();
    getWareHouseList();
  }

  Future<ResponseWareHouse> getWareHouseList() async {
    try {
      /* Get Warehouse List */

      Map<String, dynamic> parameters = {'sap-client': "800"};
      var data =
          await WareHouseNetworkController().getWareHouseList({}, parameters);
      var responseWareHouse = ResponseWareHouse.fromJson(data);
      setState(() {
        widget.warehouseList = responseWareHouse.value;
      });
      // if (responseLogin.statusCode == 200) {
      return responseWareHouse;
      // } else {
      //   throw Exception(responseLogin.message);
      // }
    } catch (error) {
      throw error.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Warehouse List'),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView.builder(
          itemCount: widget.warehouseList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(widget.warehouseList[index].ewmWarehouse)),
                  const Divider(
                    color: Colors.grey,
                  )
                ],
              ),
              onTap: () {
                stateController.userData.warehouseNumber =
                    widget.warehouseList[index].ewmWarehouse;
                Navigator.of(context).pop();
              },
            );
          },
        ),
      ),
    );
  }
}
