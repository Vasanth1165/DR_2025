import 'package:flutter/material.dart';
import 'package:state/image_slider.dart';
class MyStateFull extends StatefulWidget {
  const MyStateFull({super.key});

  @override
  State<MyStateFull> createState() => _MyStateFullState();
}

class _MyStateFullState extends State<MyStateFull> {
  int x=0;
  @override
  Widget build(BuildContext context) {
    print("Build $x");
    return Scaffold(
      appBar: AppBar(title: Text("StateFull"),
      actions: [
        IconButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=> MySlider()));
        }, icon: Icon(Icons.image))
      ],
      ),
      body: Center(
        child: Text("$x",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          x++;
          setState(() {

          });
          print(x);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

//state management

//provider
//Riverpod
//Bloc
//Getx
//mobx

