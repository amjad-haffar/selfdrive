import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:wings/Controllers/tour.dart';
import 'package:wings/Models/Destinations.dart';
import 'package:wings/api/Request.dart';
import 'package:wings/api/mapboxhandler.dart';

import '../../../main.dart';

class MapCont extends GetxController {
  // late ll.LatLng location;
  late LatLng location;
  late CameraPosition campos;
  late MapboxMapController map;
  // RxList<dynamic> carouseData = [].obs;
  int pageIndex = 0;
  late List<Widget> items;
  Map namesWithCor = {};
  int fullKilometers = 0;

  @override
  void onInit() {
    super.onInit();
    // location= ll.LatLng(sharedPreferences.getDouble('latitude')?? 1,sharedPreferences.getDouble('longitude')?? 1);
    location = LatLng(sharedPreferences.getDouble('latitude') ?? 1,
        sharedPreferences.getDouble('longitude') ?? 1);
    campos = CameraPosition(target: location, zoom: 15);
    print(location.latitude);
    print(location.longitude);
  }

  onMapCreate(MapboxMapController cont) {
    map = cont;
  }

  void createNewOrder() async {
    Map unsorted = getAllRoutes();
    var getdata = await Request.sendRoutes(MapCont().namesWithCor,TourCont().getIDS());
    fullKilometers = getdata["distance"];
    List<int> sorted = getdata["Result"];
    for(int i=0;i<sorted.length;i++){
    }
  }

  Map getAllRoutes() {
    List<Destinations> tour = TourCont().selected;
    if (tour.isNotEmpty) {
      int x = 0;
      int y = 0;
      while (x < tour.length) {
        y = x;
        while (y < tour.length) {
          if (tour[x].destination != tour[y].destination) {
            var name = "${tour[x].destination}|${tour[y].destination}";
            namesWithCor[name] = getSingleRoute(
                LatLng(tour[x].lat, tour[x].lang),
                LatLng(tour[y].lat, tour[y].lang));
            y = y + 1;
          } else {
            y = y + 1;
          }
        }
        x = x + 1;
      }
      return namesWithCor;
    } else {
      print("tour is empty");
      return Map();
    }
  }

  Future<int> getSingleRoute(LatLng source, LatLng destination) async {
    return await getDirectionsAPIResponse(source, destination);
  }
}
