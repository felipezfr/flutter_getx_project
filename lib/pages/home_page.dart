import 'package:flutter/material.dart';
import 'package:flutter_getx_project/controller/home_page_controller.dart';
import 'package:flutter_getx_project/pages/second_page.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final HomePageController controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
      appBar: AppBar(
        title: const Text("GetX"),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              "Cliques: ${controller.count}",
              style: const TextStyle(fontSize: 24),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
            child: ElevatedButton(
              child: const Text("Ir para segunda pagina"),
              onPressed: () => Get.to(SecondPage()),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add), onPressed: controller.increment),
    );
  }
}
