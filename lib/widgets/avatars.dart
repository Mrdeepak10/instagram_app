import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Avatars extends StatelessWidget {
  const Avatars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          yourStory(),
          for (var i = 0; i < 9; i++) avatar(number: i),
        ],
      ),
    );
  }

  GestureDetector yourStory() {
    return GestureDetector(onTap:() {

        } ,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2h7MboMFwXVgeOPmvoFmNmoziFmq7-6UL0g&usqp=CAU'),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                      radius: 10,
                      child: Icon(Icons.add_circle_outline_outlined,),
                    )),
                  ],
                ),
                Text("Your Story")
              ],
            ),
          ),
        );
  }

  Padding avatar({int? number = 0}) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 40,
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2h7MboMFwXVgeOPmvoFmNmoziFmq7-6UL0g&usqp=CAU'),
          ),


          Text("username $number")
        ],
      ),
    );
  }
}
