

import 'package:flutter/material.dart';
import 'package:provider_bottom_navigation_bar/page1.dart';
import 'package:provider_bottom_navigation_bar/page2.dart';

class MyProvider  extends ChangeNotifier {

  List<BottomNavigationBarItem> items=[
    BottomNavigationBarItem(icon: Icon(Icons.ac_unit),label: "page1"),
    BottomNavigationBarItem(icon: Icon(Icons.warning_rounded),label: "page2"),
  ];
  List<Widget> screens=[
   new Page_1(),
    new Page_2(),
  ];

  int currentIndex=0;

  void changeIndex(int index){
    currentIndex=index;
    notifyListeners();
  }





}