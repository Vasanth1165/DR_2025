
import 'package:flutter/material.dart';
import 'package:forms/dropdown.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DropDown(),
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
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: "Name"
              ),
              validator: (val)=> val!.isEmpty ? "Enter name" : null,
            ),
            TextFormField(
              controller: _roll,
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.confirmation_number_rounded
                ),
                hintText: "Roll No"
              ),
              validator: (val){
                if(val!.isEmpty){
                  return "Enter Roll Number";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){
              if(_key.currentState!.validate()){
                // print(_roll.text);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MyDisplay(name: _name.text.trim(), roll: _roll.text.trim())));
              }
            }, child: const Text("Submit")),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                RadioMenuButton<SigningCharacter>(

                    value: SigningCharacter.male, groupValue: _gender, onChanged: (val){
                  setState(() {
                    _gender=val;
                  });
                }, child: const Text("Male")),
                RadioMenuButton<SigningCharacter>(value: SigningCharacter.female, groupValue: _gender, onChanged: (val){
                  setState(() {
                    _gender=val;
                  });
                }, child: const Text("Female")),
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
            Text("Name : $name",style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            const SizedBox(
              height: 10,
            ),
            Text("Roll No : $roll",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
          ],
        ),
      ),
    );
  }
}
