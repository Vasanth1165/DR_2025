import 'package:flutter/material.dart';

class MyChats extends StatefulWidget {
  const MyChats({super.key});

  @override
  State<MyChats> createState() => _MyChatsState();
}

class _MyChatsState extends State<MyChats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text("WhatsApp",style: TextStyle(color: Colors.white,fontSize: 22),),
          iconTheme: const IconThemeData(
            size: 28,
            color: Colors.white
          ),
          actions:[
            IconButton(
              onPressed: (){},
               icon: const Icon(Icons.camera_alt_outlined),
            ),
            IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.search
              ),
            ),
            IconButton(
              onPressed: () {
              },
              icon: const Icon(
                Icons.more_vert
              ),
            ),
          ],
        ),
        body: const Center(
          child: Text(
            "Chats"
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(onPressed: (){},backgroundColor: Colors.teal,label: const Icon(Icons.chat_rounded)),
    );
  }
}