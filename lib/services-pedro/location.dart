import 'package:geolocator/geolocator.dart';

class Location {
  // Atributos
  double latitude = 0.0;
  double longitude = 0.0;

  // Métodos
  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}

/*
// Métodos
Future<Object> getLocation() async {
  bool serviceEnabled;
  LocationPermission permission;
  //Position position;

  // // Test if location services are enabled.
  // serviceEnabled = await Geolocator.isLocationServiceEnabled();
  // if (!serviceEnabled) {
  //   // Location services are not enabled don't continue
  //   // accessing the position and request users of the
  //   // App to enable the location services.
  //   return Future.error('Location services are disabled.');
  // }
  //
  // permission = await Geolocator.checkPermission();
  // if (permission == LocationPermission.denied) {
  //   permission = await Geolocator.requestPermission();
  //   if (permission == LocationPermission.denied) {
  //     // Permissions are denied, next time you could try
  //     // requesting permissions again (this is also where
  //     // Android's shouldShowRequestPermissionRationale
  //     // returned true. According to Android guidelines
  //     // your App should show an explanatory UI now.
  //     return Future.error('Location permissions are denied');
  //   }
  // }
  //
  // if (permission == LocationPermission.deniedForever) {
  //   // Permissions are denied forever, handle appropriately.
  //   return Future.error(
  //       'Location permissions are permanently denied, we cannot request permissions.');
  // }

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  //return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  // Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  // print(position);
  // return position;
  try {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    print(position);
    return position;
  }
  catch (e){
    print(e);
  }


}
*/