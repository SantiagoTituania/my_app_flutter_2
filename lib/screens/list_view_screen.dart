import 'package:flutter/material.dart';

class ListViewS extends StatelessWidget{
  const ListViewS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla List View Screen'),
      ),
      body: Center(child: Text("Pantalla de List View Screen"))
    );
  }
  

}