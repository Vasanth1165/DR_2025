import 'package:flutter/material.dart';

class MyDismiss extends StatefulWidget {
  const MyDismiss({super.key});

  @override
  State<MyDismiss> createState() => _MyDismissState();
}
class _MyDismissState extends State<MyDismiss> {
  var li=[1,2,3,4,5,6,7,8,9,10];
  List<int> removed=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add_shopping_cart
        ),
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=> MyCart(items: removed,name: "Vasanth",)));
        },
      ),
      body: ListView.builder(
          itemCount: li.length,
          itemBuilder: (context,i){
        return Dismissible(
          key: ValueKey(
            "${li[i]} "
          ),
          onDismissed: (val){
              removed.add(li[i]);
              li.remove(li[i]);
          },
          child: ListTile(
            visualDensity: const VisualDensity(
              vertical: 4
            ),
            title: Center(child: Text("${li[i]}",style: const TextStyle(
              fontSize: 56,
              fontWeight: FontWeight.bold
            ),)),
            tileColor: Colors.red,
          ),
        );
      }),
    );
  }
}


class MyCart extends StatelessWidget {
  final List<int> items;
  final String name;
  const MyCart({super.key,required this.items,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Removed list of $name"
        ),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context,i){
        return Container(
          width: double.infinity,
          height: 100,
          color: Colors.deepPurple,
          child:
          Center(
          child:Text(
            "${items[i]}",style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 60
          ),
          ),
          )
        );
      }),
    );
  }
}
