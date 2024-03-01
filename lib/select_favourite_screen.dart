import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/getx_controllers/favourite_controller_getx.dart';

class SelectFavouriteScreen extends StatelessWidget {
  SelectFavouriteScreen({super.key});

  final FavouriteControllerGetx favouriteControllerGetx =
      Get.put(FavouriteControllerGetx());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: favouriteControllerGetx.fruitList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(favouriteControllerGetx.fruitList[index].toString()),
              trailing: Obx(() => Icon(
                    Icons.favorite,
                    color: favouriteControllerGetx.tempFavList
                            .contains(favouriteControllerGetx.fruitList[index])
                        ? Colors.red
                        : Colors.black12,
                  )),
              onTap: () {
                if (favouriteControllerGetx.tempFavList
                    .contains(favouriteControllerGetx.fruitList[index])) {
                  favouriteControllerGetx.removeFavourite(
                      favouriteControllerGetx.fruitList[index]);
                } else {
                  favouriteControllerGetx
                      .addFavourite(favouriteControllerGetx.fruitList[index]);
                }
              },
            ),
          );
        },
      ),
    );
  }
}
