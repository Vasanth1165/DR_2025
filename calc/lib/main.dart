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
      home: MyUi(),
    );
  }
}

class MyUi extends StatefulWidget {
  const MyUi({super.key});

  @override
  State<MyUi> createState() => _MyUiState();
}

class _MyUiState extends State<MyUi> {
  final _input=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Calculator",
          style: TextStyle(
            color: Colors.orange,
            fontSize: 24
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                const Expanded(
                  flex: 2,
                  child: TextField(
                    textAlign: TextAlign.right,
                   cursorColor: Colors.deepOrangeAccent,
                   keyboardType: TextInputType.none,
                   decoration: InputDecoration(
                     border: InputBorder.none
                   )
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextField(
                    style: const TextStyle(
                      fontSize: 60
                    ),
                    controller: _input,
                    textAlign: TextAlign.right,
                   cursorColor: Colors.deepOrangeAccent,
                   keyboardType: TextInputType.none,
                   decoration: const InputDecoration(
                     hintText: "0",
                     hintStyle: TextStyle(
                      fontSize: 60
                     ),
                     border: InputBorder.none,
                     contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 5)
                   )
                  ),
                ),
              ],
            )),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.black,
              child:  Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          roundButton("C",1,Colors.white,false),
                          const SizedBox(
                            width: 10,
                          ),
                          roundButton("+/-",1,Colors.white,false),
                          const SizedBox(
                            width: 10,
                          ),
                          roundButton("BS",1,Colors.white,false),
                          const SizedBox(
                            width: 10,
                          ),
                          roundButton("%",1,Colors.deepOrangeAccent,false)
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          roundButton("7",1,Colors.white,false),
                          const SizedBox(
                            width: 10,
                          ),
                          roundButton("8",1,Colors.white,false),
                          const SizedBox(
                            width: 10,
                          ),
                          roundButton("9",1,Colors.white,false),
                          const SizedBox(
                            width: 10,
                          ),
                          roundButton("*",1,Colors.deepOrangeAccent,false)
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          roundButton("6",1,Colors.white,false),
                          const SizedBox(
                            width: 10,
                          ),
                          roundButton("5",1,Colors.white,false),
                          const SizedBox(
                            width: 10,
                          ),
                          roundButton("4",1,Colors.white,false),
                          const SizedBox(
                            width: 10,
                          ),
                          roundButton("-",1,Colors.deepOrangeAccent,false)
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          roundButton("1",1,Colors.white,false),
                          const SizedBox(
                            width: 10,
                          ),
                          roundButton("2",1,Colors.white,false),
                          const SizedBox(
                            width: 10,
                          ),
                          roundButton("3",1,Colors.white,false),
                          const SizedBox(
                            width: 10,
                          ),
                          roundButton("+",1,Colors.deepOrangeAccent,false)
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          roundButton("0",2,Colors.white,false),
                          const SizedBox(
                            width: 10,
                          ),
                          roundButton(".",1,Colors.white,false),
                          const SizedBox(
                            width: 10,
                          ),
                          roundButton("=",1,Colors.white,true),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ))
        ],
      ),
    );
  }
  Widget roundButton(String text,int flex,Color color,bool istrue){
    return Expanded(
      flex: flex,
      child: MaterialButton(onPressed: (){
        _input.text+=text;
      },
      height: 70,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50))
      ),
      color: istrue? Colors.deepOrangeAccent: Colors.white.withOpacity(.1),
      child:  Text(text,style: TextStyle(
        color: color,
        fontSize: 32,
        fontWeight: FontWeight.bold
      ),),
      ),
    );
  }
  void clear(){
    _input.text="";
  }
}