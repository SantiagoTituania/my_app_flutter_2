import 'package:flutter/material.dart';
import 'package:my_app_flutter_2/screens/alert_screen.dart';
import 'package:my_app_flutter_2/theme/app_theme.dart';

import 'router/app_router.dart';
import 'screens/home_screen.dart';
import 'screens/input_screen.dart';

void main(){
  runApp(new App2());


}

class App2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mi primera app",
      routes: AppRouter.getRoutes(),
      initialRoute: AppRouter.initialRoute,
      theme: AppTheme.lightTheme,
    );
    
  }


}