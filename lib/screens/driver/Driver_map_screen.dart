import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DriverMapScreen extends StatefulWidget {
  const DriverMapScreen({super.key});

  @override
  State<DriverMapScreen> createState() => _DriverMapScreenState();
}

class _DriverMapScreenState extends State<DriverMapScreen> {
  GoogleMapController? mapController;
  final LatLng _center = const LatLng(11.615330804283094, 76.08315467834474);
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(target: _center, zoom: 14),
    );
  }
}
