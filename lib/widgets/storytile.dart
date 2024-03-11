import 'package:flutter/material.dart';
import 'package:flutter_task1/storydata.dart';

// ignore: must_be_immutable
class Storytile extends StatelessWidget {
  StoryData dataas = StoryData();
  final String name;
  final String time;
  final String image;
  final String proimg;
  Storytile(
      {required this.name,
      required this.time,
      required this.image,
      required this.proimg,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 160,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),
          color: Colors.blue, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(proimg),
          ),
          Text(name,style:const  TextStyle(color: Colors.white),),
     
        ]),
      ),
    );
  }
}
