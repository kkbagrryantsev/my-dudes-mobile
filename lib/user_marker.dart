import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class UserMarker extends StatefulWidget  {
  @override
  State<StatefulWidget> createState() => _UserMarkerState();
}

class _UserMarkerState extends State<UserMarker> {
  @override
  Widget build(BuildContext context) {
    return Marker(
      point: LatLng(54.842943, 83.091017),
      child: FlutterLogo(),
    );
  }
}
