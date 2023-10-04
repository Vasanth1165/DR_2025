

import 'package:flutter/material.dart';
class MyButtons extends StatefulWidget {
  const MyButtons({super.key});

  @override
  State<MyButtons> createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
        actions: [
          PopupMenuButton(
            tooltip: "Select",
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Hello"),
            ),
            // color: Colors.red,
              splashRadius: 50,
              enabled: true,
              elevation: 50,
              shadowColor: Colors.red,
              position: PopupMenuPosition.values[1],
              padding: EdgeInsets.all(27),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26)
              ),
              // icon: Icon(Icons.camera_alt,color: Colors.white,),
              itemBuilder: (context)=>[
            PopupMenuItem(
              child: Column(
                children: [
                  Icon(Icons.abc,color: Colors.red,),
                  Text("Settings"),
                  Text("Settings"),
                  Text("Settings"),
                  Text("Settings"),
                  Text("Settings"),
                  Text("Settings"),
                  Text("Settings"),
                  Text("Settings"),
                ],
              )
            ),
            PopupMenuItem(child: Text("Groups"),
            ),
            PopupMenuItem(child: Text("Devices")
            )
          ] )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(child: ElevatedButton(onPressed: (){}, child: Text("Elevated"))),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(onPressed: (){}, child: Text("Outlined")),
          const SizedBox(
            height: 20,
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_time)),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(onPressed: (){},child: Icon(Icons.arrow_forward_ios_rounded),),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: (){},
            child:Text("Text")
          ),
          const SizedBox(
            height: 20,
          ),
          PopupMenuButton(
            position: PopupMenuPosition.values[1],
            splashRadius: 20,
              itemBuilder: (context)=>[ 
                PopupMenuItem(
                  value: [],
                    child: Text("Item1")),
                PopupMenuItem(child: Text("Item2")),
                PopupMenuItem(child: Text("Item3"))
          ])

        ],
      ),
    );
  }
}
