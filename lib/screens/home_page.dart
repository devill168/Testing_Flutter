import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: true,
        title: const Text("Smart POS Cloud"),
        backgroundColor: Colors.teal,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.notifications),
          ),
          Icon(Icons.mail),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
        /*padding: EdgeInsets.all(20),*/
        /*margin: EdgeInsets.all(20),*/
        margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.10),
        width: MediaQuery.of(context).size.width,
        height: 200,
        decoration:BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 3,color: Colors.red),
          shape: BoxShape.rectangle
        ),
        /*child: const Text("Welcome",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),*/
        child: Image.network("https://buffer.com/library/content/images/2023/10/free-images.jpg",fit: BoxFit.cover),
        
      ),
    );
  }
}
