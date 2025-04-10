import 'package:flutter/material.dart';
import 'package:rest_api_fetch/screens/country_screen.dart';
import 'package:device_preview/device_preview.dart';




void main() {
  runApp(
    DevicePreview(

      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CountryScreen(),
    );
  }
}
