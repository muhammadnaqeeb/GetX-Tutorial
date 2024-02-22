import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/another_screen.dart';
import 'package:getx_tutorial/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: HomeScreen(),
      getPages: [
        // initial page
        GetPage(name: "/", page: () => const HomeScreen()),
        GetPage(
          name: "/anotherScreen",
          page: () => const AnotherScreen(),
        ),
      ],
    );
  }
}
