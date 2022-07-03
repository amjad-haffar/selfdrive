import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wings/Models/Destinations.dart';
import 'package:wings/Repository/repo.dart';
import 'package:wings/api/APIurls.dart';
import 'package:wings/api/Request.dart';

class DestListCrtl extends GetxController {
  List<Destinations> desList = [];
  List<dynamic> destselected = [].obs;
  bool isLoading = false;
  bool state = true;
  List<String> filters = [
    "All",
    "Museum",
    "Castle",
    "Food",
    "Nature",
    "Area",
    "Building",
  ].obs;
  List<bool> selected =
      [true, false, false, false, false, false, false, false].obs;

  // selecting(int index) {
  //   if (destselected.contains(index)) {
  //     destselected.remove(index);
  //   } else {
  //     destselected.add(index);
  //   }
  // }

  selectfilter(int x) {
    int z = 0;
    while (z != selected.length) {
      {
        selected[z] = false;
        z++;
      }
    }
    print(selected.toString());
    selected[x] = true;
  }

  Future<void> getAll() async {
    isLoading = true;
    update();
    desList = await Request.getAllModel(
        apiName.name(apis.destination), (j) => Destinations.fromJson(j));
    if (desList.isEmpty) {
      await Future.delayed(Duration(seconds: 4), () {
        state = false;
      });
      update();
    } else {
      isLoading = false;
      update();
    }
  }

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    await getAll();
    update();
  }

  Destinations getDataOf(Destinations x) {
    for (int i = 0; i < desList.length; i++) {
      if (desList[i].id == x) {
        return desList[i];
      }
    }
    return desList[0];
  }
}
