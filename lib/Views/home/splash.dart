import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:wings/api/Request.dart';
import 'package:wings/api/mapboxhandler.dart';
import 'package:wings/main.dart';

import 'package:latlong2/latlong.dart' as ll;
import 'package:wings/utils/sampledata.dart';

import 'home.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    initializeLocationAndSave();
  }

  void initializeLocationAndSave() async {
    // Ensure all permissions are collected for Locations
    Location _location = Location();
    bool? _serviceEnabled;
    PermissionStatus? _permissionGranted;

    _serviceEnabled = await _location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await _location.requestService();
    }

    _permissionGranted = await _location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await _location.requestPermission();
    }

    // Get the current user location
    LocationData _locationData = await _location.getLocation();
    LatLng currentLocation =
        LatLng(_locationData.latitude!, _locationData.longitude!);

    // Get the current user address
    // String currentAddress =
    //     (await getParsedReverseGeocoding(currentLocation))['place'];

    // Store the user location in sharedPreferences
    sharedPreferences.setDouble('latitude', _locationData.latitude!);
    sharedPreferences.setDouble('longitude', _locationData.longitude!);
    // sharedPreferences.setString('current-address', currentAddress);
    // for (int i = 0; i < DATA.length; i++) {
    //   Map modifiedResponse = await getDirectionsAPIResponse(currentLocation,
    //   LatLng(0, 0)
    //   // TODO 
    //   //real data
    //   );
    // }
    Future.delayed(Duration(seconds: 2), () {
      Get.off(() => MyDashBoard());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.indigo,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            CupertinoIcons.car_detailed,
            color: Colors.white,
            size: 120,
          ),
          Text(
            'Tyria',
            style: Theme.of(context)
                .textTheme
                .headline1
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
