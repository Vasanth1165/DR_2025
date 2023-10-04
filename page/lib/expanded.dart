import 'package:flutter/material.dart';
class MyExpanded extends StatefulWidget {
  const MyExpanded({super.key});

  @override
  State<MyExpanded> createState() => _MyExpandedState();
}

class _MyExpandedState extends State<MyExpanded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 3,
              child: Container(
            color: Colors.yellow,
          )),
          Expanded(
            flex: 3,
              child: Container(
            color: Colors.blue,
          ))
        ],
      )
    );
  }
}
