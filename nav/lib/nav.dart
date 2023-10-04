import 'package:flutter/material.dart';
import 'package:nav/fun_widget.dart';
class MyNav extends StatefulWidget {
  const MyNav({super.key});

  @override
  State<MyNav> createState() => _MyNavState();
}

class _MyNavState extends State<MyNav> {

  @override
  Widget build(BuildContext context) {

    int hi=MediaQuery.of(context).size.height.toInt();
    int  wi=MediaQuery.of(context).size.width.toInt();

    //400

    return Scaffold(
      appBar: AppBar(
        title: wi<=400 ? Text("Mobile") :Text("Tab")
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Container(
                    height: hi/2,
                    width: (wi-50)/3,
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        fit: BoxFit.cover,

                        image: NetworkImage("https://cdn.pixabay.com/photo/2023/07/16/09/31/cat-8130334_1280.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: hi/2,
                    width: (wi-50)/3,
                    color: Colors.cyan,
                    child: Padding(
                      padding: EdgeInsets.all(
                        10
                      ),
                      child: Image(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://cdn.pixabay.com/photo/2023/08/20/15/03/flowers-8202538_1280.jpg"),
                      ),
                    ),
                  )

                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(padding: EdgeInsets.all(15),
            child: Container(
              height: hi/2,
              width: wi/1.5,
              color: Colors.grey,
              child: Padding(
                padding: EdgeInsets.all(
                  10
                ),
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://cdn.pixabay.com/photo/2023/08/20/15/03/flowers-8202538_1280.jpg"),
                ),
              )
            ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>MyFun()));
            }, child: Text("Fun"))
          ],
        ),
      )
    );
  }
}
