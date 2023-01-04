import 'package:flutter/material.dart';
import 'package:my_app_flutter_2/models/menu_options.dart';
import 'package:my_app_flutter_2/models/models.dart';
import 'package:my_app_flutter_2/screens/screens.dart';



class AppRouter{
  static const initialRoute = "home";
  static final menuOpcion = <MenuOptions> [
    MenuOptions(route: 'alert', icono: Icons.warning_rounded , nombre: 'alert Screen', screen: const AlertScreen() ),
    MenuOptions(route: 'card', icono: Icons.card_membership, nombre: 'Card Screen', screen: const CardScreen()),
    MenuOptions(route: 'input', icono: Icons.input_outlined, nombre: 'Input Screen', screen: const Input_Screen() ),
    MenuOptions(route: 'animated', icono: Icons.animation_outlined, nombre: 'Animated Screen', screen: const AnimatedScreen()),
    MenuOptions(route: 'avatar', icono: Icons.child_care_rounded, nombre: 'Avatar Screen', screen: const AvatarScreen()),
    MenuOptions(route: 'list', icono: Icons.list, nombre: 'List Screen', screen: const ListViewS()),

    
  ];
    

  static Map<String, Widget Function(BuildContext)> getRoutes(){
    Map<String, Widget Function(BuildContext)> routes = {};
    routes.addAll({'home': (BuildContext context) => HomeScreen()});
    for(var item in menuOpcion){
      routes.addAll({item.route:(BuildContext context)=> item.screen}) ;
    }
    return routes;

  }
}