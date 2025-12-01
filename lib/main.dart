import 'package:flutter/material.dart';
import 'package:nectar_app/pages/home_screen.dart';
import 'package:nectar_app/pages/settings_page.dart';
import 'package:nectar_app/pages/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
