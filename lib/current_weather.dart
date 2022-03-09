// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'current_weather.freezed.dart';
part 'current_weather.g.dart';

 //{temp: 21.27, feels_like: 20.13, temp_min: 17.47, temp_max: 23.69, pressure: 1020, humidity: 26}

@freezed
class CurrentWeather with _$CurrentWeather {
  const CurrentWeather._();
  const factory CurrentWeather({
    double? temp,
    double? feels_like,
    double? temp_min,
    double? temp_max,
    int? pressure,
    int? humidity,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);
}
