import 'package:flutter/material.dart';
import 'src/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final primary = const Color(0xFF0D47A1);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '39am',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Roboto'
      ),
      home: HomeScreen(),
    );
  }
}
