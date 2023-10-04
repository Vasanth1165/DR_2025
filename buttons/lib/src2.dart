
import 'package:buttons/screen_three.dart';
import 'package:flutter/material.dart';
class MySecondScreen extends StatelessWidget {
  const MySecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: const Text("Scr2"),
        ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const MyScreenThree()));
                }, child: const Text("Next Screen")),
          )
        ],
      ),
    );
  }
}
