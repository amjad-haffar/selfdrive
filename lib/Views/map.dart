import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:wings/utils/constants.dart';
import 'package:wings/utils/style.dart';

import '../../../main.dart';
import '../../Controllers/mapcont.dart';

class MapTrack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MapCont cont = Get.put(MapCont());
    return Scaffold(
        backgroundColor: Appthem().background,
        body: Stack(
          children: [
            // MapboxMap(
            //   styleString: stylejson,
            //   dragEnabled: false,
            //   accessToken: dotenv.env["MAPBOX_ACCESS_TOKEN"],
            //   initialCameraPosition: cont.campos,
            //   onMapCreated: cont.onMapCreate,
            //   minMaxZoomPreference: MinMaxZoomPreference(10, 17),
            //   // myLocationEnabled: true,
            //   // myLocationTrackingMode: MyLocationTrackingMode.TrackingGPS,
            // ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.my_location,
              color: Appthem().primarycolor,
            ),
            onPressed: () {
              cont.map
                  .animateCamera(CameraUpdate.newCameraPosition((cont.campos)));
              cont.map
                  .animateCamera(CameraUpdate.newCameraPosition((cont.campos)));
            }));
  }
}
