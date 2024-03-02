import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/another_screen.dart';
import 'package:getx_tutorial/counter_screen.dart';
import 'package:getx_tutorial/home_screen.dart';
import 'package:getx_tutorial/languages.dart';
import 'package:getx_tutorial/login_screen.dart';
import 'package:getx_tutorial/opacity_screen.dart';
import 'package:getx_tutorial/select_favourite_screen.dart';
import 'package:getx_tutorial/select_image_screen.dart';

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
      fallbackLocale: const Locale('en', 'US'),
      translations: Languages(),
      locale: const Locale('en',
          'US'), // language in which app start, to can store user setting in shered prefence and use here
      //home: HomeScreen(),
      getPages: [
        // initial page
        GetPage(name: "/", page: () => const HomeScreen()),
        GetPage(
          name: "/anotherScreen",
          page: () => const AnotherScreen(),
        ),
        GetPage(name: "/counter_screen", page: () => const CounterScreen()),
        GetPage(name: "/slider_screen", page: () => OpacitySlider()),
        GetPage(
            name: "/select_favourite_screen",
            page: () => SelectFavouriteScreen()),
        GetPage(
            name: "/select_image_screen",
            page: () => const SelectImageScreen()),
        GetPage(name: "/login_screen", page: () => LoginScreen()),
      ],
    );
  }
}
