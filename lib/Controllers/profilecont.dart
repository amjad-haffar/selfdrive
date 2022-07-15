import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:wings/Views/signup.dart';
import 'package:wings/main.dart';

class Profilecont extends GetxController {
  void refreshLocation() async {
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
  }
}
