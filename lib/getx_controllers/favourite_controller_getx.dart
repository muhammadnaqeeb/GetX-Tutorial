import 'package:get/get.dart';

class FavouriteControllerGetx {
  final List<String> fruitList = [
    "Apple",
    "Banana",
    "Orange",
    "Mangoes",
    "Pineapple"
  ];
  RxList tempFavList = [].obs;

  addFavourite(String item) {
    tempFavList.add(item);
  }

  removeFavourite(String item) {
    tempFavList.remove(item);
  }
}
