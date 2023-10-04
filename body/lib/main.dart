//TabBar
import 'package:flutter/material.dart';

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
      home: Home_Page()
    );
  }
}
class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("TabBar"),
          bottom: const TabBar(
            indicatorColor: Colors.orange,
            tabs: [
              Tab(
                icon: Icon(Icons.people_alt_outlined),
                text: "Community",
              ),
              Tab(
                icon: Icon(Icons.chat_rounded),
                text: "Chats",
              ),
              Tab(
                icon: Icon(Icons.camera_alt_rounded),
                text: "Status",
              ),
              Tab(
                icon: Icon(Icons.call),
                text: "Calls",
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Community")),
            Center(child: Text("Chats")),
            Center(child: Text("Status")),
            Center(child: Text("Calls"))
          ],
        )
      ),
    );
  }
}

