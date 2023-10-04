import "package:buttons/my_buttons.dart";
import "package:flutter/material.dart";
class MyScreenThree extends StatefulWidget {
  const MyScreenThree({super.key});

  @override
  State<MyScreenThree> createState() => _MyScreenThreeState();
}

class _MyScreenThreeState extends State<MyScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scr3"),
      ),
      body: Column(
        children: [

        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
          // Navigator.push(context,MaterialPageRoute(builder: (context)=>MyButtons()));
        },
        tooltip: "Click me to go back",
        elevation: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        child: Text("Back"),
      )
    );
  }
}
