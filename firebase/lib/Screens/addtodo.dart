import 'package:firebase/Screens/authentication_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final _title=TextEditingController();
  final _task=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                controller: _title,
                decoration: const InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.white)
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                controller: _task,
                decoration: const InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.white)
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () async{
              await Authentication().todo(_title.text, _task.text);
              Navigator.pop(context);
            }, child: const Text("add"))
          ],
        ),
      ),
    );
  }
}