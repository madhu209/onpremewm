import 'package:flutter/material.dart';
import 'package:onpremewm/constants/colors.dart';

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
