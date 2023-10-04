import 'package:flutter/material.dart';

class UiPage extends StatefulWidget {
  const UiPage({super.key});

  @override
  State<UiPage> createState() => _UiPageState();
}

class _UiPageState extends State<UiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 112, 109, 109),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50,),
            const Padding(padding: EdgeInsets.only(left: 15,right: 15,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Courses",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                Icon(Icons.settings,size: 28,color: Colors.white,)
              ],
            ),),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('My practical',style: TextStyle(fontSize: 38,fontWeight: FontWeight.w400,color: Colors.white,letterSpacing: 2),textAlign: TextAlign.start,),
                      SizedBox(
                        height: 10,
                      ),
                      Text('plan',style: TextStyle(fontSize: 38,fontWeight: FontWeight.w400,color: Colors.white,letterSpacing: 2),textAlign: TextAlign.start,),
                    ],
                  ),
                  // Icon(Icons.flutter_dash,color: Colors.lightGreen,size: 100,)
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50,
                    child: Icon(Icons.flutter_dash,size: 100,color: Colors.lightGreen,),
                  )
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,bottom: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.lightGreen,
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text("All",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.lightGreen,
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text("Mantras",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.lightGreen,
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text("Meditation",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.lightGreen,
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text("Sleep",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.lightGreen,
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text("Affirmation",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      height: 280,
                      color: Colors.white,
                      width: 180,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Plan for\nthe day',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                ClipRRect(borderRadius: BorderRadius.circular(90),    child: Container(color: Colors.lightGreen,child: const Padding(padding: EdgeInsets.all(15),child: Icon(Icons.favorite_border,color: Colors.black,size: 28,),) ,))
                              ],
                            ),
                            const SizedBox(height: 15,),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Container(
                                color: Colors.lightGreen,
                                child: const Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,),
                                      SizedBox(width: 10,),
                                      Text("Affirmation",style: TextStyle(fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Container(
                                color: Colors.grey,
                                child: const Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.check_box_outline_blank_outlined,),
                                      SizedBox(width: 10,),
                                      Text("Meditation",style: TextStyle(fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Container(
                                color: Colors.grey.shade400,
                                child: const Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.check_box_outline_blank_outlined,),
                                      SizedBox(width: 10,),
                                      Text("Mantras",style: TextStyle(fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      height: 280,
                      color: Colors.lightGreen.shade500,
                      width: 180,
                      child: const Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          
                          children: [
                            Text("Sleep\nMeditation",style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Text("7 days Audio Series",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 50,
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.music_note,size: 32,),
                                  Icon(Icons.multitrack_audio_outlined,size: 32,),
                                  Icon(Icons.music_note_rounded,size: 32,)

                                ],
                              )
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Icon(Icons.library_music_outlined,size: 50,),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  height: 105,
                  width: double.infinity,
                  color: Colors.white24,
                  child: Padding(padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text("  Affirmation to dlose your day",style: TextStyle(fontSize: 18,   color: Colors.white,   fontWeight: FontWeight.bold)),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.st,
                            children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                color: Colors.white,
                                child: const Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Text("15 min",style: TextStyle(fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                color: Colors.white,
                                child: const Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Text("Evening",style: TextStyle(fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                color: Colors.white,
                                child: const Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Text("Relax",style: TextStyle(fontWeight: FontWeight.bold)),
                                ),
                              ),
                            )
                          ],)
                        ],
                      ),
                      const Icon(Icons.play_circle_filled_rounded,size:64,color: Colors.lightGreen,)
                    ],
                  ),
                  
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  height: 105,
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(padding: const EdgeInsets.all(15),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text("   Meditation for deep sleep     ",style: TextStyle(fontSize: 18, color: Colors.black,   fontWeight: FontWeight.bold)),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.st,
                            children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                color: Colors.lightGreen,
                                child: const Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Text("10 min",style: TextStyle(fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                color: Colors.grey,
                                child: const Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Text("Sleep",style: TextStyle(fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                color: Colors.grey.shade400,
                                child: const Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Text("Evening",style: TextStyle(fontWeight: FontWeight.bold)),
                                ),
                              ),
                            )
                          ],)
                        ],
                      ),
                       Icon(Icons.play_circle_filled_rounded,size:64,color: Colors.grey.shade800,)
                    ],
                  ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(90),topRight: Radius.circular(90),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                    child: Container(
                      height: 200,
                      width: 180,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://cdn.pixabay.com/photo/2016/11/02/11/08/monk-1791113_1280.jpg")
                        )
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(90),topRight: Radius.circular(90),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                    child: Container(
                      height: 200,
                      width: 180,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://cdn.pixabay.com/photo/2023/02/22/08/06/man-7805933_1280.jpg")
                        )
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Center(
              child: Text("Mantras for Good Health",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.lightGreen),),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://cdn.pixabay.com/photo/2022/12/20/05/59/health-7667145_1280.jpg"))
                  ),
                ),
              ),
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Colors.lightGreen,
                  child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Know more",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                )),
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}