import 'package:flutter/material.dart';
import 'package:flutter_getx_project/controller/home_page_controller.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final HomePageController c = Get.find();

  @override
  Widget build(context) {
    // Access the updated count variable
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(
              () => Text(
                "${c.count}",
                style: const TextStyle(fontSize: 24),
              ),
            ),
          ),
          ElevatedButton(
            child: const Text("+"),
            onPressed: c.increment,
          )
        ],
      ),
    );
  }
}
