import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(Object context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MI SEGUNDA APP'),
          backgroundColor: Colors.lightBlueAccent,
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
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: const[
                    Expanded(child: ElevatedButton(
                      onPressed: null, 
                      child:  Text("Boton1")),
                      ),
                      SizedBox(width: 10,),
                      Expanded(child: ElevatedButton(
                      onPressed: null, 
                      child:  Text("Boton2")),
                      ),
                      SizedBox(width: 10,),
                      Expanded(child: ElevatedButton(
                      onPressed: null, 
                      child:  Text("Boton3")),
                      ),
                      SizedBox(width: 10,),
                      
                  ],
                ),
                const SizedBox(height: 30,),
                const Text("Bienvenido, haga clic para continuar"),
                const SizedBox(height: 30,),
                const Text("Segundo parrafo"),
                const SizedBox(height: 30,),
                ElevatedButton(
              //style: style,
              onPressed: null,
              child: const Text('Disabled'),
            ),
              SizedBox(height: 30,),
                Text("Tercer parrafo")],
                
                
            ),
            ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(height: 100.5),
        ),
      );
  }

}