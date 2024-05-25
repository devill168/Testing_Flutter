import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({super.key,required this.mobile ,required this.tablet,required this.desktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth >= 1 && constraints.maxWidth <= 600){
            return mobile;
          }
          else if (constraints.maxWidth > 600 && constraints.maxWidth <= 1700){
            return tablet;
          }
          else{
            return desktop;
          }
        },
    );
  }
}
