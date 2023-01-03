import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(Object context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MI SEGUNDA APP'),
          backgroundColor: Colors.redAccent,
          actions: [
    
        PopupMenuButton(
          // add icon, by default "3 dot" icon
          // icon: Icon(Icons.book)
          itemBuilder: (context){
            return [
              PopupMenuItem<int>(
                    value: 0,
                      child: Text("My Account.."),
                  ),

                  PopupMenuItem<int>(
                      value: 1,
                      child: Text("Settings"),
                  ),

                  PopupMenuItem<int>(
                      value: 2,
                      child: Text("Logout"),
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
        body: const Center(child: Text("Hola de nuevo, mundo de Apps"),),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(height: 100.5),
        ),
      );
  }

}