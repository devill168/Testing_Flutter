import 'package:flutter/material.dart';
import 'package:testing_flutter/screens/list_views.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: List_View(),
    );
  }
}
