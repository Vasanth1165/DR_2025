
import 'package:flutter/material.dart';

class MyGrid extends StatefulWidget {
  const MyGrid({super.key});

  @override
  State<MyGrid> createState() => _MyGridState();
}

class _MyGridState extends State<MyGrid> {
  final key=GlobalKey();
  var colors=<Color>[Colors.red,Colors.orange,Colors.purple,Colors.yellow,Colors.cyan];
  var data=<Data>[Data(color: Colors.red, imgPath: "0"),
    Data(color: Colors.yellow, imgPath: "4"),
    Data(color: Colors.purple, imgPath: "5"),
    Data(color: Colors.cyan, imgPath: "50")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          // scrollDirection: Axis.horizontal,
        // reverse:true,
          itemCount: data.length,
          itemBuilder: (context,i){
        return Dismissible(
          key: ValueKey(
            "$i"
          ),
          background: Container(
            color: Colors.black,
          ),
          onDismissed: (val){

          },
          child: Container(
            color: data[i].color,
            child: Center(
              child: Text(
                data[i].imgPath,
                style: TextStyle(
                  fontSize: 56,
                  color: Colors.white
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

class Data{
  final Color color;
  final String imgPath;
  Data({
    required this.color,
    required this.imgPath
});
}


