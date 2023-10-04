

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen()
    );
  }
}
class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int i=0;
  var list=["https://cdn.pixabay.com/photo/2023/08/26/15/21/mushroom-8215265_1280.jpg",
    "https://cdn.pixabay.com/photo/2023/07/26/16/43/food-8151625_1280.jpg",
    "https://cdn.pixabay.com/photo/2023/07/16/09/31/cat-8130334_1280.jpg",
    "https://cdn.pixabay.com/photo/2023/08/30/07/48/butterfly-8222796_1280.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("slider"),),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context,i){
        return Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.red,
                image: DecorationImage(
                  image: NetworkImage(list[i])
                )
              ),

              child: Center(child: Text("Item ${1+i}",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),)),
            ),
            Divider(
              indent: 0,
              thickness: 2,
              height: 2,
              endIndent: 0,
              color: Colors.black,
            )
          ],
        );
    })
    );
  }
}

