import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarr extends StatelessWidget {
  const SnackBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "this is title", "this is the message",
                  colorText: Colors.amber,
                  duration: Duration(seconds: 2),
                  backgroundColor: Colors.purple,
                  borderColor: Colors.black,
                  borderWidth: 2,
                  barBlur: 50,
                  borderRadius: 20,
                  boxShadows: [BoxShadow(color: Colors.black)],
                  isDismissible: false, //this is good
                  maxWidth: 300,
                  snackStyle: SnackStyle.FLOATING,
                  titleText: Text("this is over writing "),
                  messageText: Text("this is over writing "),
                  // snackPosition: SnackPosition.BOTTOM,
                  snackPosition: SnackPosition.TOP,
                );
              },
              child: Text("snakBar 1"),
            ),
          ],
        ),
      ),
    );
  }
}
