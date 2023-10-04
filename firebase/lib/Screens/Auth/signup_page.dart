import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/Screens/Auth/login_page.dart';
import 'package:firebase/Screens/authentication_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _email=TextEditingController();
  final _password =TextEditingController();
  final Authentication _auth=Authentication();
  final FirebaseFirestore db=FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomPaint(
              size: const Size(400, 393),
              painter: AmoebaPainter(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                controller: _email,
                decoration: const InputDecoration(
                  hintText: "Email"
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                obscureText: true,
                controller: _password,
                decoration: const InputDecoration(
                  hintText: "Password"
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            
            CupertinoButton.filled(child: const Text("Signup"), onPressed: (){
              _auth.register(_email.text,_password.text);
            }),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
              },
              child: const Center(child: Text("Login")))
          ],
        ),
      ),
    );
  }
}

class AmoebaPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final Path path = Path()
      ..moveTo(size.width / 2, size.height / 2)
      ..cubicTo(
        size.width / 4, size.height / 4,
        3 * size.width / 4, size.height / 4,
        size.width / 2, size.height / 2,
      )
      ..cubicTo(
        3 * size.width / 4, 3 * size.height / 4,
        size.width / 4, 3 * size.height / 4,
        size.width / 2, size.height / 2,
      );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}