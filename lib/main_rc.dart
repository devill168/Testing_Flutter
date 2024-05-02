import 'package:flutter/material.dart';
import 'package:testing_project/screens/row_colums.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RowColum(),
    );
  }
}
