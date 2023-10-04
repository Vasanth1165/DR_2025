import 'package:flutter/material.dart';

class MyStatus extends StatefulWidget {
  const MyStatus({super.key});

  @override
  State<MyStatus> createState() => _MyStatusState();
}

class _MyStatusState extends State<MyStatus> {
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
          child: Text("Status"),
        ),
        floatingActionButton: FloatingActionButton.extended(onPressed: (){},backgroundColor: Colors.teal,label: const Icon(Icons.camera_alt_rounded)),

    );
  }
}