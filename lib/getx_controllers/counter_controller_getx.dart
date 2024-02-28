import 'package:get/get.dart';

class CounterControllerGetx extends GetxController {
  RxInt count = 1.obs;

  incrementCounter() {
    count.value++;
    print(count);
  }
}
