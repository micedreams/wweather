import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final LatLng _initialcameraposition = const LatLng(20.5937, 78.9629);
  final Location _location = Location();
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};

  Future<void> _onMapCreated(GoogleMapController controller) async {
    GoogleMapController mapController = controller;
    final LocationData current = await _location.getLocation();
    _addMarker(LatLng(current.latitude!, current.longitude!));
    _location.onLocationChanged.listen((l) {
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(l.latitude!, l.longitude!), zoom: 15),
        ),
      );
    });
  }

  void _addMarker(LatLng latLng) {
    var marker = Marker(
      markerId: const MarkerId('place_name'),
      position: LatLng(latLng.latitude, latLng.longitude),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: const InfoWindow(
        title: 'title',
        snippet: 'address',
      ),
    );
    setState(() {
      markers[const MarkerId('place_name')] = marker;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GoogleMap(
            initialCameraPosition:
                CameraPosition(target: _initialcameraposition),
            mapType: MapType.normal,
            onMapCreated: _onMapCreated,
            myLocationEnabled: true,
            markers: Set<Marker>.of(markers.values),
            onTap: _addMarker),
      ),
    );
  }
}
