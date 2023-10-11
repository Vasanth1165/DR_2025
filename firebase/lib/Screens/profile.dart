import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    double hi=MediaQuery.sizeOf(context).height;
    double wi=MediaQuery.sizeOf(context).width;
    return StreamBuilder<DocumentSnapshot>(
      stream: null,
      builder: (context, snapshot) {
        return Scaffold(
          body: Container(
            color: Colors.grey,
            child: Stack(
              children: [
                Column(
                  children: [
                    Stack(
                      alignment: const Alignment(0,2.75),
                      children: [
                        Container(
                          height: hi/2.5,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(75),
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(.8),
                                shape: BoxShape.circle
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(.4),
                                      shape: BoxShape.circle
                                  ),
                                  // child: Padding(
                                  //   padding: const EdgeInsets.all(3.0),
                                  //   child: Center(
                                  //     child: Text(
                                  //       "Your Score"
                                  //     ),
                                  //   ),
                                  // ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: SizedBox(
                            height: 200,
                            width: wi,
                            child: Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(20),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                        Text("100%"),
                                        Text("Hello")
                                      ],),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("100%"),
                                          Text("Hello")
                                        ],)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 200,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Container(
                              color: Colors.red.withOpacity(.6),
                              child: const Padding(
                                padding: EdgeInsets.all(10),
                                child: Icon(Icons.home_filled),
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Container(
                              color: Colors.red.withOpacity(.6),
                              child: const Padding(
                                padding: EdgeInsets.all(10),
                                child: Icon(Icons.home_filled),
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Container(
                              color: Colors.red.withOpacity(.6),
                              child: const Padding(
                                padding: EdgeInsets.all(10),
                                child: Icon(Icons.home_filled),
                              ),
                            ),
                          )
    
                        ],
                      ),
                    )
                    ,
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Container(
                              color: Colors.red.withOpacity(.6),
                              child: const Padding(
                                padding: EdgeInsets.all(10),
                                child: Icon(Icons.home_filled),
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Container(
                              color: Colors.red.withOpacity(.6),
                              child: const Padding(
                                padding: EdgeInsets.all(10),
                                child: Icon(Icons.home_filled),
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Container(
                              color: Colors.red.withOpacity(.6),
                              child: const Padding(
                                padding: EdgeInsets.all(10),
                                child: Icon(Icons.home_filled),
                              ),
                            ),
                          )
    
                        ],
                      ),
                    )
                  ],
                ),
    
              ],
            ),
    
          ),
          // bottomNavigationBar: BottomNavigationBar(
          //   items: [
          //     BottomNavigationBarItem(icon: )
          //   ],
          // ),
        );
      }
    );
  }
}
// Scaffold(
// appBar: AppBar(
// backgroundColor: Colors.purple.withOpacity(.8),
// automaticallyImplyLeading: false,
// toolbarHeight: (MediaQuery.sizeOf(context).height/2)-70,
// flexibleSpace: SizedBox(
// height: MediaQuery.sizeOf(context).height/2,
// width: double.infinity,
// ),
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50)),
// ),
// ),
// ),