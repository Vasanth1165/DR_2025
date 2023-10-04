import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyBottomNavBar(),
    );
  }
}

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  List<Widget> li=<Widget>[MyHome(),MyList(),MySetting()];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: li[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow,
        currentIndex: index,
        onTap: (idx){
          setState(() {
            index=idx;
          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.list),label: "List"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
        ],
      ),
    );
  }
}


class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Home"),
          IconButton(onPressed: (){}, icon: Icon(Icons.home,size: 200,))
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("List"),
          IconButton(onPressed: (){}, icon: Icon(Icons.list,size: 200,))
        ],
      ),
    );
  }
}

class MySetting extends StatefulWidget {
  const MySetting({super.key});

  @override
  State<MySetting> createState() => _MySettingState();
}

class _MySettingState extends State<MySetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("Settings")),
          IconButton(onPressed: (){}, icon: Icon(Icons.settings,size: 200,))
        ],
      ),
    );
  }
}


