import 'package:flutter/material.dart';

import 'package:mydudes/widgets/map.dart';
import 'package:mydudes/widgets/navigation_bar.dart';

import '../widgets/seach_bar.dart';

class MapOverlay extends StatelessWidget {
  const MapOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Map(),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Column(
            children: [
              SearchBarWidget(),
              NavigationBarWidget()
            ],
          ),
        )
      ]
    );
  }
}
