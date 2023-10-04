import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyGrid(),
    );
  }
}

class MyGrid extends StatefulWidget {
  const MyGrid({super.key});

  @override
  State<MyGrid> createState() => _MyGridState();
}

class _MyGridState extends State<MyGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView(
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
          mainAxisSpacing: 20
        ),
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.grey,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.grey,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.grey,
          ),
          Container(
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
