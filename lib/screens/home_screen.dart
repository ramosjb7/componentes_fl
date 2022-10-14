

import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions =AppRouts.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(menuOptions[index].icon, color: AppTheme.primary,),
          title:  Text(menuOptions[index].name),
          onTap: (){
            // final route = MaterialPageRoute(
            //   builder: (context) => const ListView1Screen(),
            // );

            // Navigator.push(context, route);

            Navigator.pushNamed(context, menuOptions[index].route);

            //es para destruir la pantalla de atras 
            // se usa mas en logins 
            // Navigator.pushReplacement(context, route);
          },
        ), 
        separatorBuilder: (_,__)=> const Divider(), 
        itemCount: menuOptions.length
      )
    );
  }
}