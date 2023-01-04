import 'package:flutter/material.dart';
import 'package:my_app_flutter_2/widgest/cardview_custom.dart';

class CardScreen extends StatelessWidget{
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Card Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:40),
        child: Column(
          children: [
            SizedBox(width: 40),
            CardView(
              title: "titulo del Card View", 
              mensaje: "dssadsad sad sadsadsa"),
          ],
        ),
      )
    );
  }

}