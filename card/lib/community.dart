import 'package:flutter/material.dart';

class MyCommunity extends StatefulWidget {
  const MyCommunity({super.key});

  @override
  State<MyCommunity> createState() => _MyCommunityState();
}

class _MyCommunityState extends State<MyCommunity> {
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
              onPressed: () {
              },
              icon: const Icon(
                Icons.more_vert
              ),
            ),
          ],
        ),
        body: const Center(
          child: Text("Community"),
        ),
        floatingActionButton: FloatingActionButton.extended(onPressed: (){},backgroundColor: Colors.teal,label: const Icon(Icons.people_alt_rounded)),

    );
  }
}