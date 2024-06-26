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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Dialog Alert
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
            ),
            // Bottom Sheet
            Card(
              child: ListTile(
                title: const Text("GetX Bottom Sheet"),
                subtitle: const Text("Click On the Card"),
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Wrap(
                        children: [
                          ListTile(
                            leading: const Icon(Icons.lightbulb_outlined),
                            title: const Text("Light Theme"),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.dark_mode),
                            title: const Text("Dark Theme"),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            // Navigation
            Card(
              child: ListTile(
                title: const Text("Navigation"),
                subtitle: const Text("Navigate to next page"),
                onTap: () {
                  Get.toNamed("/anotherScreen", arguments: ["Naqeeb"]);
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Counter App"),
                subtitle: const Text("Counter app example using getX"),
                onTap: () {
                  Get.toNamed("/counter_screen");
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Slider Example"),
                subtitle: const Text("Opacity Slider using getx"),
                onTap: () {
                  Get.toNamed("/slider_screen");
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Favourite Screen"),
                subtitle: const Text("Select the favorite item"),
                onTap: () {
                  Get.toNamed("/select_favourite_screen");
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Select Image"),
                subtitle: const Text("Select Image Screen"),
                onTap: () {
                  Get.toNamed("/select_image_screen");
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Login Screen"),
                subtitle: const Text("Login using getx"),
                onTap: () {
                  Get.toNamed("/login_screen");
                },
              ),
            ),
            // height and width
            Container(
              color: Colors.amber,
              height: Get.height * 0.1,
              width: Get.width,
              child: const Text("Container"),
            ),
          ],
        ),
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
