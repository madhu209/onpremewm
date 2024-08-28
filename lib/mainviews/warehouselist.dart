import 'package:flutter/material.dart';
import 'package:onpremewm/constants/colors.dart';
import 'package:onpremewm/network/models/responsewarehouselist.dart';
import 'package:onpremewm/network/warehousenetworkcontroller.dart';

class WareHouseList extends StatefulWidget {
  const WareHouseList({super.key});

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
          itemCount: 20,
          itemBuilder: (context, index) {
            return const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text('Number')),
                Divider(
                  color: Colors.grey,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
