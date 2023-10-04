


import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyForms(),
    );
  }
}

class MyForms extends StatefulWidget {
  const MyForms({super.key});

  @override
  State<MyForms> createState() => _MyFormsState();
}

class _MyFormsState extends State<MyForms> {
  final _formkey =GlobalKey<FormState>();
  final _email=TextEditingController();
  final _pass=TextEditingController();
  bool _isvisble=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                controller: _email,
                validator: (val)=> val!.length==0 ? "Enter email address":null,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                controller: _pass,
                obscureText: _isvisble,
                validator: (val)=> val!.isEmpty ? "Enter password": null,
                decoration: InputDecoration(
                  suffixIcon: _isvisble? IconButton(onPressed: (){
                    setState(() {
                      _isvisble=false;
                    });
                  }, icon: Icon(Icons.remove_red_eye)):IconButton(onPressed: (){
                    setState(() {
                      _isvisble=true;
                    });
                  }, icon: Icon(Icons.remove_circle_outlined)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              if(_formkey.currentState!.validate()){
                print("true!!!!!!!!!!!!!!!!!!!!!!");
              }
            }, child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
// Padding(
//   padding: const EdgeInsets.symmetric(horizontal: 30),
//   child: TextField(
//     decoration: InputDecoration(
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(10)
//       ),
//       disabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderSide: BorderSide(
//           color: Colors.green
//         ),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       errorBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       errorText: "all",
//       contentPadding: EdgeInsets.symmetric(horizontal: 30),
//       // prefix: Text("Name"),
//       // prefixIcon: Icon(
//       //   Icons.mail,
//       //   color: Colors.red,
//       // ),
//       // prefixIconColor: Colors.orange,
//       // prefixText: "Email",
//       // suffixIcon: Icon(
//       //   Icons.remove_red_eye_outlined
//       // ),
//       // suffixText: "name"
//       hintText: "email",
//       helperText: "Email",
//       labelText: "Email address",
//       icon: Icon(
//         Icons.email
//       ),
//       iconColor: Colors.red,
//       // counterText: "Email",
//       // counter: Offstage()
//     ),
//     maxLength: 1,
//     // maxLines: 2,
//   ),


// )