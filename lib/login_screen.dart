import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/getx_controllers/login_controller_getx.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final LoginControllerGetx loginControllerGetx =
      Get.put(LoginControllerGetx());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          TextFormField(
            controller: loginControllerGetx.emailController.value,
            decoration: const InputDecoration(hintText: "Email"),
          ),
          TextFormField(
            controller: loginControllerGetx.passwordController.value,
            decoration: const InputDecoration(hintText: "Password"),
          ),
          const SizedBox(height: 10),
          Obx(
            () => loginControllerGetx.isLoading.value
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: () {
                      loginControllerGetx.loginApi();
                    },
                    child: const Text("Login"),
                  ),
          )
        ]),
      ),
    );
  }
}
