import 'dart:convert';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:wweather/current_weather.dart';

class Rest {
  static dynamic get(String path, queryParameters) async {
    final uri = Uri.https('api.openweathermap.org', path, queryParameters);
    final response = await http.get(uri);
    var data = json.decode(response.body);

    return data;
  }
}

class WWeatherEndPoints {
  static dynamic getWeather(LatLng latLng) async {
    //api.openweathermap.org/data/2.5/onecall?lat={lat}&lon={lon}&exclude={part}&appid={API key}
    final queryParameters = {
      'lat': '${latLng.latitude}',
      'lon': '${latLng.longitude}',
      'appid': '98e8dfcf4ea2319b693eb4c58b2a6018',
      'units': 'metric'
    };
    const path = '/data/2.5/weather';
    
    var response = await Rest.get(path, queryParameters);
    final currentWeather = CurrentWeather.fromJson(response["main"]);

    return currentWeather;
  }
}
