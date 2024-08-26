import 'package:flutter/material.dart';
import 'package:onpremewm/constants/assets.dart';
import 'package:onpremewm/constants/colors.dart';
import 'package:onpremewm/constants/constants.dart';
import 'package:onpremewm/mainviews/selectscantype.dart';

class OperationsMenu extends StatefulWidget {
  const OperationsMenu({super.key});

  @override
  State<StatefulWidget> createState() {
    return OperationsMenuState();
  }
}

class OperationsMenuState extends State<OperationsMenu> {
  List<Menu> menuList = const <Menu>[
    Menu(title: 'Inventory Stock', icon: Assets.inventoryStock),
    Menu(title: 'Put Away', icon: Assets.putAway),
    Menu(title: 'Picking', icon: Assets.picking),
    Menu(title: 'Bin2Bin Transfer', icon: Assets.bin2binTransfer),
    Menu(title: 'Goods Issue', icon: Assets.goodsIssue),
    Menu(title: 'Scraping', icon: Assets.scraping),
    Menu(title: 'Inventory Count', icon: Assets.inventoryCount),
    Menu(title: 'Adhoc Goods', icon: Assets.adhocGoods),
    Menu(title: 'All Tasks', icon: Assets.allTasks)
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(Constants.operationsMenuTitle),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Good morning User - Raju',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
                child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 1.0,
              mainAxisSpacing: 1.0,
              children: List.generate(menuList.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SelectScanType()));
                  },
                  child: OperationsMenuCard(menu: menuList[index]),
                );
              }),
            ))
          ],
        ),
      ),
    );
  }
}

class OperationsMenuCard extends StatelessWidget {
  const OperationsMenuCard({Key? key, required this.menu}) : super(key: key);
  final Menu menu;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          menu.icon,
          width: 50,
          height: 50,
        ),
        Text(menu.title)
      ],
    );
  }
}

class Menu {
  const Menu({required this.title, required this.icon});
  final String title;
  final String icon;
}
