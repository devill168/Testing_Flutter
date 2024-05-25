import 'package:flutter/material.dart';

class ResponsiveScreen extends StatefulWidget {
  const ResponsiveScreen({super.key});

  @override
  State<ResponsiveScreen> createState() => _ResponsiveScreenState();
}

class _ResponsiveScreenState extends State<ResponsiveScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[100],
      ),
      
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          if(constraints.maxWidth >= 1 && constraints.maxWidth <= 665){
            return Column(
              children: [
                Container(
                  width: 320,
                  height: 180,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.deepPurple,Colors.deepPurple.shade100]),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Text("Size Screen Phone \n$screenWidth",style: TextStyle(color: Colors.deepPurple,fontSize: 17))
              ],
            );
          }
          else if(constraints.maxWidth >= 666 && constraints.maxWidth <=1000){
            return Column(
              children: [
                Container(
                  width: 320,
                  height: 180,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.orange,Colors.orange.shade100]),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Text("Size Screen Phone \n$screenWidth",style: TextStyle(color: Colors.deepPurple,fontSize: 17))
              ],
            );
          }
          else
            return Column(
              children: [
                Container(
                  width: 320,
                  height: 180,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.red,Colors.redAccent.shade100]),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Text("Size Screen Desktop \n$screenWidth",style: TextStyle(color: Colors.deepPurple,fontSize: 17))
              ],
            );

          },
        ),
      ),
    );
  }
}

