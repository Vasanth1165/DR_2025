
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forms/radio_buttons.dart';
import 'package:forms/register%20page.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyRegister(),
    );
  }
}
enum SigningCharacter{male,female}
class MyForms extends StatefulWidget {
  const MyForms({super.key});

  @override
  State<MyForms> createState() => _MyFormsState();
}
class _MyFormsState extends State<MyForms> {
  double slider=1;
  final _name=TextEditingController();
  final _roll=TextEditingController();
  final _key=GlobalKey<FormState>();
  SigningCharacter? _gender;
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              controller: _name,
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: "Name"
              ),
              validator: (val)=> val!.length==0 ? "Enter name" : null,
            ),
            TextFormField(
              controller: _roll,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.confirmation_number_rounded
                ),
                hintText: "Roll No"
              ),
              validator: (val){
                if(val!.length==0){
                  return "Enter Roll Number";
                }
                return null;
              },
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){
              if(_key.currentState!.validate()){
                // print(_roll.text);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MyDisplay(name: _name.text.trim(), roll: _roll.text.trim())));
              }
            }, child: Text("Submit")),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                RadioMenuButton<SigningCharacter>(

                    value: SigningCharacter.male, groupValue: _gender, onChanged: (val){
                  setState(() {
                    _gender=val;
                  });
                }, child: Text("Male")),
                RadioMenuButton<SigningCharacter>(value: SigningCharacter.female, groupValue: _gender, onChanged: (val){
                  setState(() {
                    _gender=val;
                  });
                }, child: Text("Female")),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyDisplay extends StatelessWidget {
  final String name;
  final String roll;
  const MyDisplay({super.key,required this.name,required this.roll});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name : $name",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10,
            ),
            Text("Roll No : $roll",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
          ],
        ),
      ),
    );
  }
}
