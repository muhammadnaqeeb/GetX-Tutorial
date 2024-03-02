import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/getx_controllers/image_picker_controller_getx.dart';

class SelectImageScreen extends StatelessWidget {
  const SelectImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ImagePickerControllerGetx imagePickerControllerGetx =
        Get.put(ImagePickerControllerGetx());
    return Scaffold(
        appBar: AppBar(),
        body: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: imagePickerControllerGetx
                          .imagePath.isNotEmpty
                      ? FileImage(
                          File(imagePickerControllerGetx.imagePath.toString()))
                      : null,
                ),
              ),
              TextButton(
                onPressed: () {
                  imagePickerControllerGetx.getImage();
                },
                child: const Text("Campure Image"),
              )
            ],
          ),
        ));
  }
}
