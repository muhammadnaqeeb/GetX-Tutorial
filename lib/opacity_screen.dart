import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/getx_controllers/opacity_controller_getx.dart';
import 'package:getx_tutorial/getx_controllers/switch_controller_getx.dart';

class OpacitySlider extends StatelessWidget {
  OpacitySlider({super.key});
  final OpacityControllerGetx opacityControllergetx =
      Get.put(OpacityControllerGetx());
// switch using getx
  final SwitchControllerGetx switchControllergetx =
      Get.put(SwitchControllerGetx());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Obx(
            () => Container(
              height: 200,
              width: double.infinity,
              color:
                  Colors.red.withOpacity(opacityControllergetx.opacity.value),
            ),
          ),
          Obx(
            () => Slider(
              value: opacityControllergetx.opacity.value,
              onChanged: (val) {
                opacityControllergetx.changeOpacity(val);
              },
            ),
          ),
          // switch using getX
          Obx(() => Switch(
              value: switchControllergetx.switchValue.value,
              onChanged: (v) {
                switchControllergetx.changeSwitchValue(v);
              }))
        ],
      ),
    );
  }
}
