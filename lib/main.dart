import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main(){
  runApp(new App2());


}

class App2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mi primera app",
      
      home: HomeScreen(),

    );
    
  }


}