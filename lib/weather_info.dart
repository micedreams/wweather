import 'package:flutter/material.dart';
import 'package:wweather/current_weather.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({
    Key? key,
    required this.currentWeather,
  }) : super(key: key);

  final CurrentWeather currentWeather;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showDialog(
        context: context,
        builder: (BuildContext context) {
          double avarageTemp = double.parse(
              (currentWeather.temp_min! + currentWeather.temp_max! / 2)
                  .toStringAsFixed(2));
          return AlertDialog(
            title: const Text("Alert Dialog title"),
            content: SizedBox(
              height: 162.0,
              width: 220.0,
              child: ListView(
                padding: const EdgeInsets.only(
                  top: 2.0,
                  bottom: 2.0,
                  left: 4.0,
                ),
                shrinkWrap: true,
                children: [
                  Text("Current temparature: ${currentWeather.temp}° C"),
                  Text("Avarage temparature: $avarageTemp° C"),
                  Text("Maximum temparature: ${currentWeather.temp_min}° C"),
                  Text("Minimum temparature: ${currentWeather.temp_max}° C"),
                  Text("Humidity: ${currentWeather.humidity} g/kg"),
                  Text("Pressure: ${currentWeather.pressure} kgf/cm2"),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      ),
      child: SizedBox(
        height: 100.0,
        width: 220.0,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Card(
                child: Padding(
              padding: const EdgeInsets.only(
                top: 2.0,
                bottom: 2.0,
                left: 4.0,
              ),
              child: Text("Current temparature: ${currentWeather.temp}° C"),
            )),
            Card(
                child: Padding(
              padding: const EdgeInsets.only(
                top: 2.0,
                bottom: 2.0,
                left: 4.0,
              ),
              child: Text("Feels like: ${currentWeather.feels_like}° C"),
            )),
          ],
        ),
      ),
    );
  }
}
