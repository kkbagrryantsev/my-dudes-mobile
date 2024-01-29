import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mydudes/user_marker.dart';

class Map extends StatelessWidget {
  final UserMarker miqqra = const UserMarker(
    'assets/images/miqqra.png',
    LatLng(
      54.847488,
      83.092463,
    ),
  );
  final UserMarker avlasov = const UserMarker(
    'assets/images/avlasov.png',
    LatLng(
      54.842951,
      83.091011,
    ),
  );
  final UserMarker chlim = const UserMarker(
    'assets/images/chlim.png',
    LatLng(
      54.848768,
      83.092250,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(54.842943, 83.091017),
          initialZoom: 15,
          keepAlive: true,
          interactionOptions: InteractionOptions(
            flags: InteractiveFlag.all & ~InteractiveFlag.rotate,
          ),
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.mydudes.app',
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: miqqra.point,
                width: miqqra.width,
                height: miqqra.height,
                child: miqqra,
              ),
              Marker(
                point: avlasov.point,
                width: avlasov.width,
                height: avlasov.height,
                child: avlasov,
              ),
              Marker(
                point: chlim.point,
                width: chlim.width,
                height: chlim.height,
                child: chlim,
              ),
            ],
          ),
          RichAttributionWidget(
            attributions: [
              TextSourceAttribution(
                'OpenStreetMap contributors',
                onTap: () =>
                    launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
