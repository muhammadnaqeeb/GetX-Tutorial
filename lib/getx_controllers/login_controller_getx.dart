import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginControllerGetx {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  RxBool isLoading = false.obs;
  loginApi() async {
    isLoading.value = true;
    try {
      final response = await http.post(
        Uri.parse("https://reqres.in/api/login"),
        body: {
          "email": emailController.value.text,
          "password": passwordController.value.text,
        },
      );
      var data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        isLoading.value = false;

        Get.snackbar("Login Successfull", "Hello");
      } else {
        isLoading.value = false;
        Get.snackbar("Login Failed", data['error']);
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar("Execption", e.toString());
    }
  }
}
