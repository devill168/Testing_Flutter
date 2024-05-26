import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testing_flutter/screens/responsive.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  get splash => null;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        duration: 8000,
        backgroundColor: Colors.grey.shade100,
        splashIconSize: MediaQuery.of(context).size.height * 0.25,
          splash: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.height * 0.7,
                height: MediaQuery.of(context).size.height * 0.25,
                  child: Image.asset("assets/animation logo (online-video-cutter.com).gif", fit: BoxFit.fill,)
              )
            ],
          ),
          nextScreen: ResponsiveScreen(),
      ),
    );
  }
}
