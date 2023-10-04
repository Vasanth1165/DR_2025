//MaterialApp
//Scaffold
//AppBar
//Text
//Image
//Icon
//Card
//Container
//SizedBox
//ClipRRect
//Padding
//RoundedRectangularborder
//SafeArea

import 'dart:math';

import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _o=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AnimatedOpacity(
          opacity: o,
          duration: Duration(seconds: 1,),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.red,
          ),
          onEnd: () {
            setState(() {
              _o=;
            });
          },
          )
      )
    );
  }
}
