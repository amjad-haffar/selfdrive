import 'package:get/get.dart';
import 'package:wings/Repository/repo.dart';
import 'package:wings/api/APIurls.dart';
import 'package:wings/api/Request.dart';
import 'package:wings/features/Models/Destinations.dart';
import 'package:wings/features/Models/Model.dart';

class DestListCrtl extends GetxController {
  List<Destinations> desList = [];
  dynamic destselected = [].obs;
  RxBool togglesecet = false.obs;
  List<String> filters = [
    "All",
    "museum",
    "castle",
    "restaurant",
    "special area",
    "mountain",
    "food",
    "city",
  ].obs;
  List<bool> selected =
      [true, false, false, false, false, false, false, false].obs;

  selecting(int index) {
    if (destselected.contains(index)) {
      destselected.remove(index);
    } else {
      destselected.add(index);
    }
  }

  togglebool() {
    if (togglesecet.value) {
      togglesecet.value = false;
    } else {
      togglesecet.value = true;
    }
  }

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
  // static DestListCrtl get cont => Get.find<DestListCrtl>();
  // fetchalldest() async {
  //   desList = await repo.getAllDestList("url");
  //   update();
  // }

  // Future<Destinations> getthis(String id) async {
  //   return await repo.fetchdesitnation(id, 'url');
  // }

  Future<List<Destinations>> getAll() async {
    return Request.getAllModel(
        apiName.name(apis.destination)!, (j) => Destinations.fromJson(j));
  }
}
