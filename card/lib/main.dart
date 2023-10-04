import 'package:card/calls.dart';
import 'package:card/chats.dart';
import 'package:card/community.dart';
import 'package:card/status.dart';
import'package:flutter/material.dart';

void main(){
  runApp(
    const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget());
  }
}
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    double wi=MediaQuery.of(context).size.width;
    return const DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: TabBarView(
          children: [
            MyChats(),
            MyStatus(),
            MyCommunity(),
            MyCalls()
            
        ]),
        bottomNavigationBar: TabBar(
          indicatorColor: Colors.teal,
          tabs: [
            Tab(
              text: "Chats",
              icon: Icon(Icons.chat_rounded),
            ),
            Tab(
              text: "Status",
              icon: Icon(Icons.camera_alt,)
            ),
            Tab(
              icon: Icon(Icons.people_alt_rounded),
              text: "Community",
            ),
            Tab(
              text: "Calls",
              icon: Icon(Icons.call)
            )
        ]),
      ),
    );
  }
}
