import 'package:flutter/material.dart';

import '../style/colors.dart';
class QuizButton extends StatelessWidget {



  QuizButton(
      { required this.name,
      required this.height,
      required this.width,
      required this.action,
        required this.borderColor,
      required this.backgroundColor,
      required this.fontColor,
      required this.fontSize}
);
  String name;
  double height;
  double width;
  var action;
  Color backgroundColor;
  Color fontColor;
  Color borderColor;
  double fontSize;


  @override
  Widget build(BuildContext context) {
    return  Container(
      height: height,
      width: width,
      child: ElevatedButton(
          onPressed: action,
          style: ElevatedButton.styleFrom(
              side: BorderSide(color: borderColor,width: 2),
              padding: EdgeInsets.all(10),
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
          ),
          child:Text(name,style: TextStyle(color: fontColor,fontSize: fontSize,)),


    ),
    );
  }
}
