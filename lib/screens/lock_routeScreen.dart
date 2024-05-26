import 'package:flutter/material.dart';

class LockRouteScreen extends StatefulWidget {
  const LockRouteScreen({super.key});

  @override
  State<LockRouteScreen> createState() => _LockRouteScreenState();
}

class _LockRouteScreenState extends State<LockRouteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text("Lock Route Screen",style: TextStyle(fontSize: 40,color: Colors.white70)),
        backgroundColor: Colors.deepPurple.shade400,
        centerTitle: true,
      ),
    );
  }
}
