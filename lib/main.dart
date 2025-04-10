import 'package:flutter/material.dart';
import 'package:rest_api_fetch/screens/country_screen.dart';


void main() {
  runApp(MyApp());
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
