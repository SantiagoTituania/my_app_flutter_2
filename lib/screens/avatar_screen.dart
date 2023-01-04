import 'package:flutter/material.dart';

import '../widgest/cardview_custom.dart';

class AvatarScreen extends StatelessWidget{
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Mi perfil'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 238, 235, 218),
              child: const Text("FT"),
            ),
          )
        ],
      ),
      body: 
        Padding(
          padding: const EdgeInsets.only(top:30),
          child: Column(
            children: [
              CircleAvatar(
                maxRadius: 80,
                backgroundImage: AssetImage('assets/viagsistemas2.jpg'),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Icon(
                    Icons.audiotrack,
                    color: Colors.green,
                    size: 30.0,
                  ),
                  Icon(
                    Icons.beach_access,
                    color: Colors.blue,
                    size: 36.0,
                  ),
                ],
                  
              ),
               const SizedBox(height: 30),

                SizedBox(width: 40),
                CardView(
                  title: "Descripcion Biobliografica", 
                  mensaje: "dssadsad sad sadsadsa as a sasa s a s a s"
                  ),

              
              
            ],
            
          ),
        ),
      );
  }

}