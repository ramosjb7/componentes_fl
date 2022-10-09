

import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRouts {

  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home'  :(context) => const HomeScreen(),
    'listview1':(context) =>  const ListView1Screen(),
    'listview2':(context) =>  const ListView2Screen(),
    'alert':(context) =>  const AlertScreen(),
    'card':(context) =>  const CardScreen(),

  }; 

}