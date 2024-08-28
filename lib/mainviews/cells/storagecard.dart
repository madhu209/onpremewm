import 'package:flutter/material.dart';

class StorageCard extends StatelessWidget {
  const StorageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product Number',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  'Product Date',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                )
              ],
            ),
            Spacer(),
            Text('5 PC')
          ],
        ),
        Divider(color: Colors.black)
      ],
    );
  }
}
