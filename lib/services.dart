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
    //api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&exclude={part}&appid={API key}
    //api.openweathermap.org/data/2.5/onecall?lat=33.44&lon=-94.04&exclude=minutely,daily&appid={API key}
    final queryParameters = {
      'lat': '${latLng.latitude}',
      'lon': '${latLng.longitude}',
      'exclude': 'minutely,daily',
      'appid': '98e8dfcf4ea2319b693eb4c58b2a6018',
      'units': 'metric'
    };
    const path = '/data/2.5/onecall';

    var response = await Rest.get(path, queryParameters);
    var currentWeather = CurrentWeather.fromJson(response["current"]);
    currentWeather =
        currentWeather.copyWith(feelsLike: response["current"]["feels_like"]);
    List allTempList = response['hourly'].map((x) {
      return x["temp"];
    }).toList();

    currentWeather = currentWeather.copyWith(allTemp: allTempList);

    return currentWeather;
  }
}
