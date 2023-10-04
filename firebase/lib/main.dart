
import 'package:firebase/Screens/Auth/signup_page.dart';
import 'package:firebase/Screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}

class MyPaint extends StatefulWidget {
  const MyPaint({super.key});

  @override
  State<MyPaint> createState() => _MyPaintState();
}

class _MyPaintState extends State<MyPaint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions:  [
          GestureDetector(
            child: const Icon(
              Icons.logout_outlined
            ),
            onTap: (){
              FirebaseAuth.instance.signOut().then((value) => Navigator.pop(context)).onError((error, stackTrace) => print(error));
            },
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Center(
        heightFactor: 2.5,
        child: FloatingActionButton(
          backgroundColor: Colors.deepPurpleAccent,
          onPressed: (){},child: const Center(child: Icon(Icons.qr_code_scanner_outlined)),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MyProfile()));
            },
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height/3,
              width: MediaQuery.of(context).size.width/2,
              child: CustomPaint(
                painter: CardPaint(),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Hello",style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          CustomPaint(
            size: Size(MediaQuery.sizeOf(context).width,80),
            painter: Curve(),
          )
        ],
      ),
    );
  }
}

class Curve extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint=Paint()..color=Colors.deepPurple.withOpacity(.6);
    final path=Path();
    path.moveTo(0, 0);
    path.lineTo(size.width*.40, 0);
    // path.quadraticBezierTo(size.width*.25,90,size.width*.1,0);
    path.relativeQuadraticBezierTo(size.width*.10,70,size.width*.20, 0);
    path.lineTo(size.width*.60, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0,size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>false;
}

class CardPaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final path=Path();
    final paint=Paint()..color=Colors.deepPurpleAccent;
    path.moveTo(0,0);
    path.lineTo(size.width*.8, 0);
    // path.quadraticBezierTo(size.width*.75, 0, size.width*.8, 0);
    path.lineTo(size.width*.8, size.height*.2);
    path.lineTo(size.width, size.height*.2);
    path.lineTo(size.width, size.height);
    path.lineTo(0,size.height);
    path.close();
    final path2=Path();
    path2.moveTo(size.width*.85,0);
    path2.lineTo(size.width, 0);
    path2.lineTo(size.width, size.height*.17);
    path2.lineTo(size.width*.85, size.height*.17);
    
    canvas.drawPath(path, paint);
    canvas.drawPath(path2,paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>false;
}