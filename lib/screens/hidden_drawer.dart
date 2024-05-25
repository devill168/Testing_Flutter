/*
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:testing_flutter/screens/row_coalum.dart';

import 'list_views.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages =[];
  bool isDrawerOpen = false;

  @override
void initState() {
    super.initState();

    _pages =[
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            colorLineSelected: Colors.lightBlueAccent,
            name: 'Page 1',
            baseStyle: TextStyle(color: Colors.white,fontSize: 20),
            selectedStyle: TextStyle(),
          ),
          Gridsview_Route(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          colorLineSelected: Colors.lightBlueAccent,
          name: 'Page 2',
          baseStyle: TextStyle(color: Colors.white,fontSize: 20),
          selectedStyle: TextStyle(),
        ),
        List_View(),
      ),
    ];
  }

  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      tittleAppBar: Text("CNM of Cambodia",style: TextStyle(color: Colors.white)),
      backgroundColorMenu: Color(0xff2471A3).withOpacity(0.9),
      screens: _pages,
      initPositionSelected: 0,
      backgroundColorAppBar: Color(0xff2471A3),
      styleAutoTittleName: TextStyle(color: Colors.white),
        leadingAppBar: Icon(Icons.menu,color: Colors.white),
      slidePercent: 60,
      contentCornerRadius: 25,
*/
/*      boxShadow: const [
        BoxShadow(
          color: Colors.white,
          offset: Offset(1,1),
          blurRadius: 1,
          spreadRadius: 1,
        )
      ],*//*

    );
  }
}
*/
