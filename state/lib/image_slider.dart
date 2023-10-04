import 'package:flutter/material.dart';
class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {

  int x=0;

  var li=["https://cdn.pixabay.com/photo/2023/08/19/05/50/wolf-8199785_1280.png",
    "https://cdn.pixabay.com/photo/2023/07/17/17/05/lizard-8133108_1280.jpg",
    "https://cdn.pixabay.com/photo/2023/08/06/10/01/bird-8172597_1280.jpg",
    "https://cdn.pixabay.com/photo/2023/08/27/13/16/nature-8217030_1280.jpg",
    "https://cdn.pixabay.com/photo/2023/07/16/09/31/cat-8130334_1280.jpg",
    "https://cdn.pixabay.com/photo/2023/08/26/17/49/dahlias-8215514_1280.jpg",
    "https://cdn.pixabay.com/photo/2023/07/28/11/05/boat-8155029_1280.jpg",
    "https://cdn.pixabay.com/photo/2023/06/14/04/34/yellow-rose-8062266_1280.jpg"

  ];
  void onDec(){
    if(x==0){
      x=li.length-1;
    }else{
      x--;
    }
  }

  void onInc(){
    if(x==li.length-1){
      x=0;
    }else{
      x++;
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Slider"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(li[x])
                )
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){
                onDec();
                setState(() {

                });
              },
                icon: const Icon(Icons.arrow_back_ios_new_outlined,size: 32,),color: Colors.blueGrey,
                ),
              IconButton(onPressed: (){
                onDec();
                setState(() {

                });
              }, icon: const Icon(Icons.arrow_forward_ios_rounded,size: 32,),color: Colors.blueGrey,),
            ],
          )
        ],
      ),
    );
  }
}
