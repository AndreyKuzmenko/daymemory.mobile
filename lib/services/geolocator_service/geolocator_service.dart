import 'package:daymemory/data/dtos/note_dto.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

abstract class IGeolocatorService {
  Future<bool> isLocationServiceEnabled();

  Future<LocationPermission> checkPermission();

  Future<LocationDto?> loadLocation();
}

class GeolocatorService implements IGeolocatorService {
  @override
  Future<bool> isLocationServiceEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  @override
  Future<LocationPermission> checkPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied, we cannot request permissions.');
    }

    return permission;
  }

  @override
  Future<LocationDto?> loadLocation() async {
    try {
      await checkPermission();
      var location = await Geolocator.getCurrentPosition();
      var address = await _loadAddress(location.latitude, location.longitude);
      return LocationDto(latitude: location.latitude, longitude: location.longitude, address: address);
    } catch (e) {
      return null;
    }
  }

  Future<String?> _loadAddress(double latitude, double longitude) async {
    List<Placemark> placemarks = await placemarkFromCoordinates(latitude, longitude);
    Placemark place = placemarks[0];
    var currentAddress = "${place.locality}, ${place.country}";
    return currentAddress;
  }
}
