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
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text("GetX dialog Alert"),
              subtitle: const Text("Click On the Card"),
              onTap: () {
                Get.defaultDialog(
                  title: "Hello",
                  contentPadding: const EdgeInsets.all(10),
                  middleText:
                      "Dialog using GetX", // not more then 3 lines, you can yes 'content' for this
                  // textConfirm: "Yes",
                  // textCancel: "No",
                  confirm: TextButton(
                    onPressed: () {},
                    child: const Text("Yes"),
                  ),
                  cancel: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Cancel"),
                  ),
                  // content: const Column(
                  //   children: [
                  //     Text("Hi"),
                  //     Text("Hi"),
                  //     Text("Hi"),
                  //     Text("Hi"),
                  //   ],
                  // ),
                );
              },
            ),
          )
        ],
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
