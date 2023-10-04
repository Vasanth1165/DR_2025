
import 'package:flutter/material.dart';
import 'package:tiles/dismiss.dart';
import 'package:tiles/grid.dart';
import 'package:tiles/stack.dart';

void main(){
  runApp(
    const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStack(),
    );
  }
}
class MyTile extends StatefulWidget {
  const MyTile({super.key});

  @override
  State<MyTile> createState() => _MyTileState();
}

class _MyTileState extends State<MyTile> {

  var data=<Data>[Data(name: "Vasanth"),Data(name: "Ram"),Data(name: "Sai"),Data(name: "Lakshman")];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.green,
                  backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2023/08/19/17/36/bird-8200917_1280.jpg"
                  )
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Technicalhub"),
                Text("support@techncalhub.io")
              ],
            )),
            Divider(
              height: 2,
              thickness: 2,
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(
                Icons.home
              ),
              title: Text("Home"),
              onTap: (){

              },
            ),
            Divider(
              thickness: 1,
              height: 1,
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(
                Icons.list
              ),
              title: Text("passes list"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Passes()));
              },
            ),
            Divider(
              thickness: 1,
              height: 1,
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(
                  Icons.logout
              ),
              title: Text("Log Out"),
              onTap: (){
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Center(child: Text("Do you want Log out")),
                    actions: [
                      TextButton(onPressed: (){

                      }, child: Text("No")),
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("Yes"))
                    ],
                  );
                });
              },
            )
          ],
        ),
      ),
      drawerEnableOpenDragGesture: true,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ListView.builder(
              itemCount: 20,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,i){
                return Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle
                  ),
                );
              }),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context,i){
              return Column(
                children: [
                  ListTile(
                    tileColor: Colors.yellow,
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red
                      ),
                    ),
                    title: const Text("vasanth"),
                  ),
                  const Divider(
                    height: 2,
                    thickness: 2,
                    color: Colors.black,
                  )
                ],
              );
            }),
          )
        ],
      )
    );
  }
}

class Data{
  final String name;
  Data({
    required this.name
});
}



class Passes extends StatefulWidget {
  const Passes({super.key});

  @override
  State<Passes> createState() => _PassesState();
}

class _PassesState extends State<Passes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 10,
          itemBuilder: (context,i){
        return ListTile(
          title: Text("pass $i"),
        );
      }),
    );
  }
}
