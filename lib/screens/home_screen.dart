import 'package:flutter/material.dart';

import '../models/models.dart';
import '../router/app_router.dart';

class HomeScreen extends StatelessWidget{
  //final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
  static List<MenuOptions> listaMenu = AppRouter.menuOpcion;

  const HomeScreen({super.key});
  @override
  Widget build(Object context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('COMPONENTES DE FLUTTER'),
          elevation: 10,
          //backgroundColor: Colors.lightBlueAccent,
          actions: [
    
        PopupMenuButton(
          // add icon, by default "3 dot" icon
          // icon: Icon(Icons.book)
          itemBuilder: (context){
            return [
              PopupMenuItem<int>(
                    value: 0,
                      child: Text("Mi cuenta"),
                  ),

                  PopupMenuItem<int>(
                      value: 1,
                      child: Text("Ajustes"),
                  ),
                  PopupMenuItem<int>(
                      value: 2,
                      child: Text("Otros"),
                  ),

                  PopupMenuItem<int>(
                      value: 3,
                      child: Text("Salir"),
                  ),
              ];
          },
          onSelected:(value){
            if(value == 0){
                print("My account menu is selected.");
            }else if(value == 1){
                print("Settings menu is selected.");
            }else if(value == 2){
                print("Logout menu is selected.");
            }
          }
        ),

  ],
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text(listaMenu[index].nombre),
            leading: Icon(listaMenu[index].icono),
            onTap: () {
              Navigator.pushNamed(context, listaMenu[index].route);
            },
          ) , 
          separatorBuilder: ((context, index) => const Divider() ), 
          itemCount: AppRouter.menuOpcion.length,


        )

        //bottomNavigationBar: BottomAppBar(
          //shape: const CircularNotchedRectangle(),
          //child: Container(height: 100.5),
        //),
      );
  }

}