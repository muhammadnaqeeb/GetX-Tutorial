import 'package:get/get.dart';

class SwitchControllerGetx extends GetxController {
  RxBool switchValue = false.obs;

  changeSwitchValue(newVal) {
    switchValue.value = newVal;
  }
}
