import 'package:geolocator/geolocator.dart';
import 'package:nursultan_assigmants/app/8_weather/services/location/location_service.dart';

class LocationRepo {
  Future<Position> getCurrentLocation() async {
    return await locationService.getCurrentLocation();
  }
}

final LocationRepo locationRepo = LocationRepo();
