import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

import 'package:location/location.dart';

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

  Future<void> _onMapCreated(GoogleMapController controller) async {
    _controller.complete(controller);
    final LocationData current = await _location.getLocation();
    _addMarker(LatLng(current.latitude!, current.longitude!));
  }

  void _addMarker(LatLng latLng) {
    var marker = Marker(
      markerId: const MarkerId('1'),
      position: LatLng(latLng.latitude, latLng.longitude),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(
        title: '${latLng.latitude},${latLng.longitude}',
        snippet: '${latLng.latitude},${latLng.longitude}',
      ),
    );
    setState(() {
      markers[const MarkerId('1')] = marker;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GoogleMap(
            initialCameraPosition: _initialcameraposition,
            mapType: MapType.normal,
            onMapCreated: _onMapCreated,
            myLocationEnabled: true,
            markers: Set<Marker>.of(markers.values),
            onTap: _addMarker),
      ),
    );
  }
}
