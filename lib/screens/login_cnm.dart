import 'package:flutter/material.dart';
import 'package:khmer_fonts/khmer_fonts.dart';

import 'gridView_Surveillance.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2471A3),
      appBar: AppBar(
        backgroundColor: Color(0xFF2471A3),
         leading: IconButton(onPressed: (){
           Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Gridsview_Surveillance()), (route) => false);
         }, icon: Icon(Icons.arrow_back,color: Colors.white)),
      ),
      body: Container(
        width: double.infinity,
        height: 300,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text("ក្រសួងសុខាភិបាល",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,fontFamily: KhmerFonts.moul, package: "Khmer_fonts")),
              SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  border: Border.symmetric(horizontal: BorderSide(width: 0.5,color: Colors.white)),
                ),
              ),
              SizedBox(height: 10),
              Text("ម.គ.ច",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25,fontFamily: KhmerFonts.moul,package: "Khmer_fonts")),
            ],
          ),
        ),
      ),
    );
  }
}
