import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const CiudadelaApp());
}

class CiudadelaApp extends StatelessWidget {
  const CiudadelaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ciudadela App',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const HomeScreen(),
    );
  }
}
