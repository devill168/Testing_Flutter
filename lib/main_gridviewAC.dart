import 'package:flutter/material.dart';
import 'package:testing_flutter/screens/advanceDrawer_ACgridview.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AdvanceDrawers(),
    );
  }
}
