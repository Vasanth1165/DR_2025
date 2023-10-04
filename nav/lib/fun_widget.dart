import 'package:flutter/material.dart';
class MyFun extends StatefulWidget {
  const MyFun({super.key});

  @override
  State<MyFun> createState() => _MyFunState();
}

class _MyFunState extends State<MyFun> {
  @override
  Widget build(BuildContext context) {
    double hi=MediaQuery.of(context).size.height;
    double wi=MediaQuery.of(context).size.width;

    Container container(double hi,double wi,Color color,String img){
      return Container(
        height: hi/3,
        width: (wi-50)/3,
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            fit: BoxFit.cover,
            image: NetworkImage(img),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.values[0],
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: wi>=400 ?
              Row(
                children: [
                  container(hi, wi, Colors.red,"https://cdn.pixabay.com/photo/2023/08/27/13/16/nature-8217030_1280.jpg"),
                  SizedBox(
                    width: 10,
                  ),
                  container(hi, wi, Colors.blueGrey,"https://cdn.pixabay.com/photo/2023/08/27/13/16/nature-8217030_1280.jpg"),
                  SizedBox(
                    width: 10,
                  ),
                  container(hi, wi, Colors.grey,"https://cdn.pixabay.com/photo/2023/08/19/05/31/green-sea-turtle-8199770_1280.jpg"),
                  SizedBox(
                    width: 10,
                  ),
                  container(hi, wi, Colors.pink,"https://cdn.pixabay.com/photo/2023/07/28/11/05/boat-8155029_1280.jpg"),
                  SizedBox(
                    width: 10,
                  ),
                  container(hi, wi, Colors.green,"https://cdn.pixabay.com/photo/2023/03/17/02/43/architecture-7857833_1280.jpg")
                ],
              )
                  :
                  Column(
                    children:[
                      container(hi, wi, Colors.red,"https://cdn.pixabay.com/photo/2023/08/27/13/16/nature-8217030_1280.jpg"),
                      SizedBox(
                        width: 10,
                      ),
                      container(hi, wi, Colors.blueGrey,"https://cdn.pixabay.com/photo/2023/08/27/13/16/nature-8217030_1280.jpg"),
                      SizedBox(
                        height: 10,
                      ),
                      container(hi, wi, Colors.grey,"https://cdn.pixabay.com/photo/2023/08/19/05/31/green-sea-turtle-8199770_1280.jpg"),
                      SizedBox(
                        height: 10,
                      ),
                      container(hi, wi, Colors.pink,"https://cdn.pixabay.com/photo/2023/07/28/11/05/boat-8155029_1280.jpg"),
                      SizedBox(
                        height: 10,
                      ),
                      container(hi, wi, Colors.green,"https://cdn.pixabay.com/photo/2023/03/17/02/43/architecture-7857833_1280.jpg")
                    ],
                  )
            ),
          )
        ],
      ),
    );

  }
}
