import 'package:flutter/material.dart';

import 'gradientContainer.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice app",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const DiceApp(),
    );
  }
  
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(context){
    return const Scaffold(
      body: GradientContainer.purple(),
    );
  }
}