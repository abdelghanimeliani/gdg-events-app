import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();
  Set<Marker> _markers = {};

  static final CameraPosition _esiLocation = CameraPosition(
    target: LatLng(36.708623204523796, 3.174338204705403),
    zoom: 14.4746,
  );

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(const Marker(
          markerId: MarkerId("id-1"),
          position: LatLng(36.708623204523796, 3.174338204705403),
          infoWindow: InfoWindow(
              title: "ESI Algiers",
              snippet: "Ecole Nationale Superieure d'Informatique")));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 350.0,
        height: 350.0,
        child: Card(
          elevation: 100,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
          child: GoogleMap(
            onMapCreated: _onMapCreated,
            markers: _markers,
            myLocationButtonEnabled: false,
            zoomControlsEnabled: true,
            mapType: MapType.normal,
            initialCameraPosition: _esiLocation,
          ),
        ),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_esiLocation));
  }
}
