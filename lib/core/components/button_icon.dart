import 'package:flutter/material.dart';

import '../style/colors.dart';
class ButtonIcon extends StatelessWidget {



  ButtonIcon(
      { required this.name,
      required this.height,
      required this.width,
      required this.action,
        required this.borderColor,
      required this.backgroundColor,
      required this.fontColor,
      required this.fontSize,
        required this.iconData,
      }
);
  IconData iconData;
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
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(iconData,color: Colors.white,),
              SizedBox(width: 5,),
              Text(name,style: TextStyle(color: fontColor,fontSize: fontSize,)),

            ],
          ),


    ),
    );
  }
}
