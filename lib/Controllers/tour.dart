import 'package:get/get.dart';
import 'package:wings/Models/Destinations.dart';
import 'package:wings/Models/Model.dart';
import 'package:wings/utils/components/destinationcard.dart';

class TourCont extends GetxController {
  RxBool toggle = false.obs;
  RxList<Destinations> selected = <Destinations>[].obs;
  deleteAdd(Destinations x) {
    if (selected.contains(x)) {
      toggle.value = false;
      selected.remove(x);
      print("removed");
      print(x.destination);
    } else {
      toggle.value = true;
      selected.add(x);
      print("add");
      print(x.destination);
    }
    print(selected.length);
  }

  List<int> getIDS() {
    List<int> ids = [];
    for (int x = 0; x < selected.length; x++) {
      ids.add(selected[x].id);
    }
    return ids;
  }

  search(Destinations x) {
    if (selected.contains(x)) {
      toggle.value = true;
    } else {
      toggle.value = false;
    }
    // update();
  }
}
