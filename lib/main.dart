
import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      
      initialRoute: AppRouts.initialRoute,
      routes: AppRouts.getAppRoutes(),
      
      onGenerateRoute: (settings){
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
        );
      },
      theme: AppTheme.lightTheme
    );
  }
}