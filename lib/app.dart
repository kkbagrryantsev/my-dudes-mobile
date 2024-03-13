import 'package:flutter/material.dart';
import 'package:mydudes/screens/home_screen.dart';

class MyDudesApp extends StatelessWidget {
  const MyDudesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
            bodyMedium: TextStyle(
          color: Colors.white,
        )),
        colorScheme: const ColorScheme(
          primary: Colors.yellow,
          // Primary color (typically used for buttons, the app bar, etc.),
          // A darker version of the primary color, used for certain elements
          secondary: Colors.greenAccent,
          // Secondary color (typically used for FAB, selection controls, etc.),
          // A darker version of the secondary color, used for certain elements
          surface: Colors.white,
          // Surface color (background color of surfaces such as cards)
          background: Color(0x00272727),
          // Background color (overall background color of the app)
          error: Colors.redAccent,
          // Error color (typically used to indicate errors or validation issues)
          onPrimary: Colors.white,
          // Color for elements that are on top of the primary color
          onSecondary: Colors.white,
          // Color for elements that are on top of the secondary color
          onSurface: Colors.white,
          // Color for elements that are on top of the surface color
          onBackground: Colors.white,
          // Color for elements that are on top of the background color
          onError: Colors.white,
          // Color for elements that are on top of the error color
          brightness:
              Brightness.dark, // Brightness of the color scheme (light or dark)
        ),
      ),
    );
  }
}
