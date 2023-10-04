import 'package:flutter/material.dart';
class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Builders"),),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(a, r, g, b)
                
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyList()));
              },
              child: Text("List"),
            ),
          )
        ],
      ),
    );
  }
}

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {

  List<Contacts> li=<Contacts>[
    Contacts(imgPath: "https://cdn.pixabay.com/photo/2023/07/16/09/31/cat-8130334_1280.jpg", name: "Cat"),
    Contacts(imgPath: "https://cdn.pixabay.com/photo/2023/08/27/13/16/nature-8217030_1280.jpg", name: "Reptile"),
    Contacts(imgPath: "https://cdn.pixabay.com/photo/2023/06/14/04/34/yellow-rose-8062266_1280.jpg", name: "Flower"),
    Contacts(imgPath: "https://cdn.pixabay.com/photo/2023/06/16/13/46/surfing-8068052_1280.jpg", name: "Person")

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      body: ListView.builder(
         itemCount: li.length,
          itemBuilder:(BuildContext context,i){
        return Container(
          height: 100,
          width: double.infinity,
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(90),
                  child: Image(
                    fit: BoxFit.cover,
                    height: 80,
                      width: 80,
                      image: NetworkImage(
                    li[i].imgPath
                  )),
                ),
                Text(li[i].name,style: TextStyle(
                  fontSize: 32
                ),),
                Text(TimeOfDay.now().toString().substring(10,15),style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
        );
      })
    );
  }
}

class Contacts{
  final String imgPath;
  final String name;
  Contacts({
    required this.imgPath,
    required this.name,
  });
}

