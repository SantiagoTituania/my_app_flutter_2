import 'package:flutter/material.dart';
import 'package:my_app_flutter_2/theme/app_theme.dart';

class CardView extends StatelessWidget{
  final String title;
  final String mensaje;
  const CardView({super.key, required this.title, required this.mensaje});
  
  

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
           ListTile(
            title: Text(title),
            //subtitle: Text(" Contenido del CardView redactado en un parrafo"),
            subtitle: Text(mensaje),
            leading: Icon(Icons.card_giftcard, color: AppTheme.primaryColor,),
          )
        ],
      ),
    );
  }

}