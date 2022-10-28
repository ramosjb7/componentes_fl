

import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRouts {

  static const initialRoute = 'home';

  static final menuOptions =<MenuOption>[
    //TODO: borrar home
    // MenuOption(
    //   route: 'home', 
    //   name: 'Home Screen', 
    //   screen: const HomeScreen(),
    //   icon: Icons.home, 
    // ),
    MenuOption(
      route: 'listview1', 
      name: 'ListView 1', 
      screen: const ListView1Screen(),
      icon: Icons.list_alt, 
    ),
    MenuOption(
      route: 'listview2', 
      name: 'ListView 2', 
      screen: const ListView2Screen(),
      icon: Icons.list_alt_outlined, 
    ),
    MenuOption(
      route: 'alert', 
      name: 'Alertas', 
      screen: const AlertScreen(),
      icon: Icons.add_alert_outlined 
    ),
    MenuOption(
      route: 'card', 
      name: 'Cards', 
      screen: const CardScreen(),
      icon: Icons.credit_card, 
    ),
    MenuOption(
      route: 'avatar', 
      name: 'Circle-Avatar', 
      screen: const AvatarScreen(),
      icon: Icons.supervised_user_circle_outlined
    ),
    MenuOption(
      route: 'animated', 
      name: 'Animated Container', 
      screen: const AnimedScreen(),
      icon: Icons.play_arrow_outlined
    ),
    MenuOption(
      route: 'inputs', 
      name: 'Text Inputs', 
      screen: const InputScreen(),
      icon: Icons.input_rounded
    ),

    MenuOption(
      route: 'slider', 
      name: 'Slider and Cheks', 
      screen: const SliderScreen(),
      icon: Icons.slow_motion_video
    ),

    MenuOption(
      route: 'listviewbilder', 
      name: 'Infinity Scrool', 
      screen: const ListViewBuiderScreen(),
      icon: Icons.build_circle_outlined
    ),

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes={};

    appRoutes.addAll({'home' : (BuildContext context) => const HomeScreen()});


    for (final option in menuOptions) {
      appRoutes.addAll({option.route  :(context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home'  :(context) => const HomeScreen(),
  //   'listview1':(context) =>  const ListView1Screen(),
  //   'listview2':(context) =>  const ListView2Screen(),
  //   'alert':(context) =>  const AlertScreen(),
  //   'card':(context) =>  const CardScreen(),

  // }; 

}