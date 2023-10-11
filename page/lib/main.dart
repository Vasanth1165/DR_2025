
import 'package:flutter/material.dart';
import 'package:page/expanded.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyExpanded()
    );
  }
}

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.red,
            child: const Center(
              child: Text("Red",style: TextStyle(fontSize: 32,color: Colors.white),),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text("Green",style: TextStyle(fontSize: 32,color: Colors.white),),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text("Blue",style: TextStyle(fontSize: 32,color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}

