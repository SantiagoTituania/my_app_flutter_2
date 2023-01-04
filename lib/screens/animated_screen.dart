import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget{
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);
  Color _color=Color.fromARGB(255, 86, 157, 27);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla de Animated Screen'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 600),
          curve: Curves.easeInOutCubic,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          final Random random = Random();
          _width = random.nextInt(300).toDouble()+70;
          _height = random.nextInt(300).toDouble()+70;
          _borderRadius = BorderRadius.circular(random.nextInt(300).toDouble() +10);
          _color = Color.fromARGB(random.nextInt(255),random.nextInt(255),random.nextInt(255),1);
          setState(() {
            
          });
        }),
      ),
    );
  }
}