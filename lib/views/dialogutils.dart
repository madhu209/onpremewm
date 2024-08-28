import 'package:flutter/material.dart';

class DialogUtils {
  static Future<bool?> displayDialogOKCallBack(
      BuildContext context, String message,
      {String title = "Alert"}) async {
    return await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: [
              const Spacer(),
              Text(
                title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Spacer()
            ],
          ),
          content: Row(
            children: [const Spacer(), Text(message), const Spacer()],
          ),
          actions: <Widget>[
            Row(
              children: [
                const Spacer(),
                TextButton(
                    child: const Text(
                      "Ok",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    }),
                const Spacer(),
              ],
            ),
          ],
        );
      },
    );
  }
}
