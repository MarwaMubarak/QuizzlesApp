import 'package:flutter/material.dart';
import 'package:flutter_shapes/flutter_shapes.dart';
import 'dart:math';
import 'package:quizzles_app/core/utils/navigate.dart';
import 'package:quizzles_app/screens/quiz_screen.dart';

import '../../models/quiz_model.dart';
class LevelComponent extends StatelessWidget {
  String name;
  int score;
  Color color;
  QuizModel quizModel;
  LevelComponent({required this.name, required this.score,required this.color,required this.quizModel});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigate.navigateWithBack(context, QuizScreen(quizModel: quizModel,idx: 0,));
      },
      child: Container(
        child: Stack(
          alignment: Alignment.center,
            children: [
              Icon(Icons.pentagon,size: 180,color: color,),
              Column(
                children: [
                  SizedBox(height: 70,),
                  Text("Level ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,height: 1.5),),
                  Text(name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                ],
              ),


            ]
        ),
      ),
    );
  }



}
