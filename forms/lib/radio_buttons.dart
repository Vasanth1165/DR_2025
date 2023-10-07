import 'package:flutter/material.dart';
class MyRadioButtons extends StatefulWidget {
  const MyRadioButtons({super.key});

  @override
  State<MyRadioButtons> createState() => _MyRadioButtonsState();
}

enum PassType{Home,Sunday,Sick,Leave}

class _MyRadioButtonsState extends State<MyRadioButtons> {
  PassType? passtype;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("gender",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          RadioMenuButton<PassType>(
              value: PassType.Home,
              groupValue: passtype,
              onChanged: (val){
                setState(() {
                  passtype=val;
                });
              },

              trailingIcon: Icon(
                Icons.home
              ),
              child: Text("Home")),
          RadioMenuButton<PassType>(value: PassType.Sunday,
              groupValue: passtype,
              onChanged: (val){
               setState(() {
                 passtype=val;
               });
              },
              child: Text("Sunday")),
          RadioMenuButton<PassType>(
              value: PassType.Sick,
              groupValue: passtype,
              onChanged: (val){
                setState(() {
                  passtype=val;
                });
              },
              child: Text("Sick")),
          RadioMenuButton<PassType>(value: PassType.Leave,
              groupValue: passtype,
              onChanged: (val){
                setState(() {
                  passtype=val;
                });
              },
              child: Text("Leave"))
          ,SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: (){
            print(passtype.toString().substring(9));
          }, child: Text("Get")),
        ],
      ),
    );
  }
}
