import 'package:flutter/material.dart';
import 'package:testing_flutter/screens/responsive.dart';
import 'package:testing_flutter/screens/responsiveTest.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeResponsive(),
    );
  }
}
