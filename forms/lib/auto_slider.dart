import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class MyAutoSlider extends StatefulWidget {
  const MyAutoSlider({super.key});

  @override
  State<MyAutoSlider> createState() => _MyAutoSliderState();
}

class _MyAutoSliderState extends State<MyAutoSlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CarouselSlider(
            items: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.red,
                child: const Image(
                  image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2023/04/27/14/03/flowers-7954719_1280.jpg"
                  ),
                )
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.yellow,
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.green,
              )
            ],
            options: CarouselOptions(
              initialPage: 2,
              pauseAutoPlayInFiniteScroll: true,
                autoPlayCurve: Curves.easeInBack,
              autoPlay: true
            ),

          )
        ],
      ),
    );
  }
}

class MyPdf extends StatefulWidget {
  const MyPdf({super.key});

  @override
  State<MyPdf> createState() => _MyPdfState();
}

class _MyPdfState extends State<MyPdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(""),
      ),
    );
  }
}


