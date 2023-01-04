import 'package:flutter/material.dart';
import 'package:my_app_flutter_2/widgest/input_custom.dart';

class Input_Screen extends StatelessWidget{
  const Input_Screen({super.key});

  @override
   
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formularioRegistroKey = GlobalKey<FormState>();
    final Map<String, String> valores={
      
        'name': 'Frank',
        'last_name': 'Tituaña',
        'email': 'san@gmail.com',
        'password': '232923',
        'role': 'admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Input Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20, vertical: 10),
          child: Form(
            key: formularioRegistroKey,
            child: Column(
              
              children: [ 
                const SizedBox(height: 20,),
                InputCustom(
                  labelText: "Nombre",
                  hintText: "Ingrese su nombre",
                  formProperty: 'name', 
                  formValues: valores
                  ),
                  const SizedBox(height: 20,),
                  InputCustom(
                  labelText: "Apellido",
                  hintText: "Ingrese su Apellido",
                  formProperty: 'last_name', 
                  formValues: valores
                  ),
                  const SizedBox(height: 20,),
                   InputCustom(
                  labelText: "Email",
                  hintText: "correo@gmail.com",
                  inputType: TextInputType.emailAddress, 
                  formProperty: 'email',
                  formValues: valores
                  ),  
                  const SizedBox(height: 20,),
                  InputCustom(
                  labelText: "Password",
                  hintText: "Ingrese su contraseña",
                  isObscureText: true, 
                  formProperty: 'password',
                  formValues: valores
                  ), 
                  const SizedBox(height: 20,),
                  DropdownButtonFormField(
                    value: 'admin',
                    items: const [
                      DropdownMenuItem(value: 'admin', child: Text("Administrador")),
                      DropdownMenuItem(value: 'susuario', child: Text("Super Usuario")),
                      DropdownMenuItem(value: 'dev', child: Text("Programador")),
                      DropdownMenuItem(value: 'devj', child: Text("Programador Junior")),
                    ], 
                    onChanged: ((value) {
                      valores['role']=value ?? 'admin';
                    })),
                     const SizedBox(height: 20,),
                     ElevatedButton(onPressed: (() {
                       FocusScope.of(context).requestFocus(FocusNode());
                       if(!formularioRegistroKey.currentState!.validate()){
                        print("formulario no valido");
                        _mostrarDialogo(context);
                        return;
                       }
                       else
                       return _mostrarDialogo1(context);
                     }), 
                     child: const SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: Center(child: Text("Guardar"))))
              ],
            ),

          ),
        )
        
      ) 
      //const Center(child: Text("Pantalla de Input_Screen")),
    );
  }
  void _mostrarDialogo(BuildContext context){
    showDialog(
      context: context, 
      builder: ((context) {
        return AlertDialog(
          title: Text ("Error del Formulario"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text("Formulario no Valido, debe completar todos los campos"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              child: const Text("Cerrar"))],
        );
      }));
  }

  void _mostrarDialogo1(BuildContext context){
    showDialog(
      context: context, 
      builder: ((context) {
        return AlertDialog(
          title: Text ("Confirmación"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text("Formulario completado con éxito"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              child: const Text("Cerrar"))],
        );
      }));
  }

}