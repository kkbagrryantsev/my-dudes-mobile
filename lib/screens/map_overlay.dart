import 'package:flutter/material.dart';

import 'package:mydudes/widgets/map.dart';

import '../widgets/search_bottom_sheet.dart';

class MapOverlay extends StatelessWidget {
  const MapOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [const Map(), SearchBottomSheet()]);
  }
}
