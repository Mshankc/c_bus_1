import 'dart:async';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class ParentMapScreen extends StatefulWidget {
  const ParentMapScreen({Key? key}) : super(key: key);

  @override
  State<ParentMapScreen> createState() => _ParentMapScreenState();
}

class _ParentMapScreenState extends State<ParentMapScreen> {
  GoogleMapController? mapController;
  final LatLng _center = const LatLng(11.615330804283094, 76.08315467834474);

  late LatLng startLocation;
  late LatLng currentLocation;
  late LatLng destination;

  Set<Marker> markers = {};
  Set<Polyline> polylines = {};

  @override
  void initState() {
    super.initState();
    // Fetch initial location data when the widget is created
    fetchLocationData();
    // Start a timer to update the current location periodically
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      // Update the current location for demonstration purposes
      currentLocation = LatLng(currentLocation.latitude + 0.0001, currentLocation.longitude + 0.0001);
      updateMarkers();
      updatePolylines();
    });
  }

  void fetchLocationData() async {
    // In a real-world scenario, replace the following lines with Firebase Firestore queries
    startLocation = LatLng(11.615330804283094, 76.08315467834474);
    currentLocation = LatLng(11.625330804283094, 76.09315467834474);
    destination = LatLng(11.635330804283094, 76.10315467834474);

    // After fetching the initial data, update the markers and polylines
    updateMarkers();
    updatePolylines();
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    updateMarkers();
  }

  void updateMarkers() {
    markers.clear();
    markers.add(
      Marker(
        markerId: MarkerId('start'),
        position: startLocation,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        infoWindow: InfoWindow(title: 'Start Location'),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId('current'),
        position: currentLocation,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
        infoWindow: InfoWindow(title: 'Current Location'),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId('destination'),
        position: destination,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        infoWindow: InfoWindow(title: 'Destination'),
      ),
    );

    // Animate camera to show all markers
    LatLngBounds bounds = LatLngBounds(
      southwest: LatLng(currentLocation.latitude, currentLocation.longitude),
      northeast: LatLng(destination.latitude, destination.longitude),
    );
    mapController?.animateCamera(CameraUpdate.newLatLngBounds(bounds, 100));
  }

  void updatePolylines() {
    polylines.clear();
    polylines.add(
      Polyline(
        polylineId: PolylineId('route'),
        points: [startLocation, currentLocation, destination],
        color: Colors.blue,
        width: 5,
      ),
    );
    // Rebuild the widget to update polylines on the map
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(target: _center, zoom: 13.5),
      markers: markers,
      polylines: polylines,
    );
  }
}