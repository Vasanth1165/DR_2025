import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state/statefull.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStateLess(),
    );
  }
}
class MyStateLess extends StatelessWidget {
  const MyStateLess({super.key});

  @override
  Widget build(BuildContext context) {
    int x=0;
    return Scaffold(
      appBar: AppBar(
        title: Text("StateLess"),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>MyStateFull()));
          }, icon: Icon(Icons.send))
        ],
      ),
      body: Center(child: Text("$x",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),)),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          x++;
          print(x);
        },
        child:Icon(Icons.add),
      ),
    );
  }
}

