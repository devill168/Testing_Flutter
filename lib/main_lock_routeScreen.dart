import 'package:flutter/material.dart';
import 'package:testing_flutter/screens/lock_routeScreen.dart';
import 'package:flutter/services.dart';


void main (){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).size.width >= 1 && MediaQuery.of(context).size.width <= 650){
      WidgetsFlutterBinding.ensureInitialized();
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    }
    else{
      WidgetsFlutterBinding.ensureInitialized();
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
    }
    return MaterialApp(
          home: LockRouteScreen(),
        );
  }
}
