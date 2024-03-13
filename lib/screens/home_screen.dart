import 'package:flutter/material.dart';

import '../widgets/navigation_bar.dart';
import 'map_overlay.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: MapOverlay(),
        bottomNavigationBar: NavigationBarWidget(),
        resizeToAvoidBottomInset: false);
  }
}
