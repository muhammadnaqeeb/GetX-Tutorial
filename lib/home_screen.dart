import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX"),
      ),
      body: const Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "Welcome",
            "from Muhammad Naqeeb",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.amber,
            icon: const Icon(Icons.add),
            mainButton: TextButton(
              onPressed: () {
                print("Main Button");
              },
              child: const Text("Main Button"),
            ),
            onTap: (snack) {
              print("SNACK: $snack");
            },
          );
        },
        child: const Icon(Icons.notifications),
      ),
    );
  }
}
