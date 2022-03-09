import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

import 'package:location/location.dart';
import 'package:wweather/current_weather.dart';
import 'package:wweather/services.dart';
import 'package:wweather/weather_info.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const CameraPosition _initialcameraposition = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  final Location _location = Location();
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  final Completer<GoogleMapController> _controller = Completer();
  CurrentWeather currentWeather = const CurrentWeather(
      temp: 0.0,
      feels_like: 0.0,
      temp_min: 0.0,
      temp_max: 0.0,
      pressure: 0,
      humidity: 0);

  Future<void> _onMapCreated(GoogleMapController controller) async {
    _controller.complete(controller);
    final LocationData current = await _location.getLocation();
    _addMarker(LatLng(current.latitude!, current.longitude!));
  }

  Future<void> _addMarker(LatLng latLng) async {
    CurrentWeather weather = await WWeatherEndPoints.getWeather(latLng);
    setState(() {
      currentWeather = weather;
    });

    var marker = Marker(
      markerId: const MarkerId('1'),
      position: LatLng(latLng.latitude, latLng.longitude),
      icon: BitmapDescriptor.defaultMarker,
    );
    setState(() {
      markers[const MarkerId('1')] = marker;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            GoogleMap(
                initialCameraPosition: _initialcameraposition,
                mapType: MapType.normal,
                onMapCreated: _onMapCreated,
                myLocationEnabled: true,
                markers: Set<Marker>.of(markers.values),
                onTap: _addMarker),
            Positioned(
                bottom: 20.0,
                child: WeatherInfo(currentWeather: currentWeather))
          ],
        ),
      ),
    );
  }
}
