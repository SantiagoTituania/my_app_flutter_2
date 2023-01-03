import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  //final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
              const SizedBox(height: 30,),
               const  Text("Tercer parrafo"),
               
               const SizedBox(height: 30,),
               
               const Text("Bienvenido"),
              // key: _formKey,
               TextFormField(
              decoration: const InputDecoration(
              hintText: 'Ingrese su usuario',
              
            ),
            
            
             validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Por favor ingrese nuevamente su Usuario';
              }
              return null;
            },),
            TextFormField(
              decoration: const InputDecoration(
              hintText: 'Ingrese su contraseña',
              
            ),
            
            
             validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Por favor ingrese su contraseña';
              }
              return null;
            },),
            TextFormField(
              decoration: const InputDecoration(
              hintText: 'Confirme su contraseña',
              
            ),
            
            
             validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Por favor ingrese nuevamente su contraseña';
              }
              return null;
            },),
            Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
            
              },
              //child: const Text('Ingresar'),
              child: Row(
                children: const[
                  Expanded(child: ElevatedButton(
                    onPressed: null, 
                    child:  Text("Ingresar")),
                    ),
                    SizedBox(width: 30,),
                    Expanded(child: ElevatedButton(
                    onPressed: null, 
                    child:  Text("Cancelar")),
                    ),
                    
                ],
              ),
              
              
              
            ),
          ),
           ],

                          
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