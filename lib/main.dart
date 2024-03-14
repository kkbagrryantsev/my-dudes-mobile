import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mydudes/constants/theme.dart';
import 'package:mydudes/screens/home_screen.dart';
import 'package:get/get.dart';

void main() => runApp(GetMaterialApp(theme: AppTheme.darkTheme, home: HomeScreen()));