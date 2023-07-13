import 'package:flutter/material.dart';
import 'package:flutter_shapes/flutter_shapes.dart';
import 'dart:math';
import 'package:quizzles_app/core/utils/navigate.dart';
import 'package:quizzles_app/screens/quiz_screen.dart';

import '../../models/quiz_model.dart';
class LevelComponentHelper extends StatelessWidget {
  String name;
  int score;
  Color color;
  // Color s1;
  // Color s2;
  // Color s3;
  //required this.s1,required this.s2,required this.s3
  LevelComponentHelper({required this.name, required this.score,required this.color,});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 150,
      width: 160,
      child: Column(
        children: [

          Stack(
            alignment: Alignment.center,
              children: [
                Icon(Icons.pentagon,size: 140,color: color,),
                Column(
                  children: [
                    SizedBox(height: 26,),
                    Text("  Level ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,height: 1.5),),
                    Text("  $name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                  ],
                ),

              ]
          ),
        ],
      ),
    );
  }



}
