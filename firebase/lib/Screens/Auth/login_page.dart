import 'package:firebase/Screens/authentication_service.dart';
import 'package:firebase/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<LoginPage> {
  final _email=TextEditingController();
  final _password =TextEditingController();
  final FirebaseAuth _auth=FirebaseAuth.instance;
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
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.white)
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(onTap: (){
                    _auth.sendPasswordResetEmail(email: _email.text.trim()).then((value) => (){}).onError((error, stackTrace) => (){});
                  },   child: const Text("Forgot Password?",style: TextStyle(color: Colors.white),))
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CupertinoButton.filled(child: const Text("Login"), onPressed: (){
              _auth.signInWithEmailAndPassword(email: _email.text, password: _password.text)
              .then((value) => Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyPaint())))
              .onError((error, stackTrace) => print(error));
            })
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

class MyOTP extends StatefulWidget {
  const MyOTP({super.key});

  @override
  State<MyOTP> createState() => _MyOTPState();
}

class _MyOTPState extends State<MyOTP> {
  final _otp=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: _otp,
          ),
          CupertinoButton.filled(child: const Text("Confirm"), onPressed: (){}),
        ],
      ),
    );
  }
}