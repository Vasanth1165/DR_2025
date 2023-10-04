import 'package:flutter/material.dart';
class MyPageBuilder extends StatefulWidget {
  const MyPageBuilder({super.key});

  @override
  State<MyPageBuilder> createState() => _MyPageBuilderState();
}

class _MyPageBuilderState extends State<MyPageBuilder> {

  var colors=<Color>[Colors.red,Colors.yellow,Colors.green,Colors.purple,Colors.orange,Colors.grey,Colors.cyan];

  var data=<Data>[
    Data(color: Colors.red, colorName: "Red"),
    Data(color: Colors.orange, colorName: "orange"),
    Data(color: Colors.purple, colorName: "purple")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: data.length,
          itemBuilder: (context,i){
        return Container(
          color: data[i].color,
              child: Center(
            child: Text(data[i].colorName,style: TextStyle(
              color: Colors.white,
              fontSize: 32
            ),),
        ),
        );
      }),
    );
  }
}

class Data{
  final Color color;
  final String colorName;
  Data({
    required this.color,
    required this.colorName
  });
}




class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hello"),
        ],
      )
    );
  }
}

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hi"),
        ],
      ),
    );
  }
}

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("How are you")
        ],
      ),
    );
  }
}

