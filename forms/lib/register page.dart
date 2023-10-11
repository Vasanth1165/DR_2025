import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});
  @override
  State<MyRegister> createState() => _MyRegisterState();
}
class _MyRegisterState extends State<MyRegister> {
  final key=GlobalKey<FormState>();
  final name=TextEditingController();
  final mail=TextEditingController();
  final roll=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: name,
              decoration: InputDecoration(
                hintText: "Name",
                icon: Icon(
                  Icons.person
                )
              ),
              validator: (val)=> val!.isEmpty ? "Enter name": null,
            ),
            TextFormField(
              controller: mail,
              decoration: InputDecoration(
                  icon: Icon(
                      Icons.mail
                  ),
                  hintText: "College mail"
              ),
              validator: (val)=> val!.isEmpty ? "Enter college mail": null,
            ),
            TextFormField(
              controller: roll,
              decoration: InputDecoration(
                  icon: Icon(
                      Icons.important_devices_rounded
                  ),
                  hintText: "Roll Number"
              ),
              validator: (val)=> val!.isEmpty ? "Enter roll number": null,
            ),
            SizedBox(
              height: 20,
            ),

            ElevatedButton(onPressed: (){
              if( key.currentState!.validate()){
                print("${name.text} ${mail.text} ${roll.text}");
                Navigator.push(context, MaterialPageRoute(builder: (context)=> RegistedStudent(name: name.text, mail: mail.text, roll: roll.text)));
              }
            }, child: Text("Register")),

          ],
        ),
      ),
    );
  }
}


class RegistedStudent extends StatefulWidget {
  final String name;
  final String mail;
  final String roll;
  const RegistedStudent({super.key, required this.name,required this.mail,required this.roll});

  @override
  State<RegistedStudent> createState() => _RegistedStudentState();
}

class _RegistedStudentState extends State<RegistedStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Name: ${widget.name}",style: TextStyle(
            fontSize: 18,
            color: Colors.red,
            fontWeight: FontWeight.bold
          ),),
          Text("mail: ${widget.mail}",style: TextStyle(
              fontSize: 18,
              color: Colors.red,
              fontWeight: FontWeight.bold
          ),),
          Text("roll num: ${widget.roll}",style: TextStyle(
              fontSize: 18,
              color: Colors.red,
              fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}
