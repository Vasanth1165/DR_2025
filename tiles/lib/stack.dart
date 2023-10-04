import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class MyStack extends StatefulWidget {
  const MyStack({super.key});

  @override
  State<MyStack> createState() => _MyStackState();
}

class _MyStackState extends State<MyStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Container(
                color: Colors.purpleAccent[100],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/college.svg",
                    height: 200,
                      width: 300,
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.purpleAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularStepProgressIndicator(totalSteps: 100,roundedCap: (_, __) => true,
                      width: 200,
                      height: 200,
                      currentStep: 74,
                      selectedStepSize: 10,
                      selectedColor: Colors.white,
                      child: Center(
                        child: Text(
                          "74%",
                          style: TextStyle(
                            fontSize: 48,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.cyan,
              )
            ],
          ),
          Container(
            alignment: Alignment(0,.8),
            child: Text("Stack",style: TextStyle(fontSize: 32,color: Colors.white),),
          ),
        ],
      ),
    );
  }
}
