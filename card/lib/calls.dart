import 'package:flutter/material.dart';

class MyCalls extends StatefulWidget {
  const MyCalls({super.key});

  @override
  State<MyCalls> createState() => _MyCallsState();
}

class _MyCallsState extends State<MyCalls> {
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
            "Calls"
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(onPressed: (){},backgroundColor: Colors.teal,label: const Icon(Icons.add_ic_call_rounded)),

    );
  }
}