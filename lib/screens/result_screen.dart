import 'package:flutter/material.dart';
import 'package:quizzles_app/core/components/button_icon.dart';
import 'package:quizzles_app/core/style/colors.dart';
import 'package:quizzles_app/core/components/button.dart';
import 'package:quizzles_app/core/utils/navigate.dart';
import 'package:quizzles_app/screens/home_screen.dart';
class ResultScreen extends StatelessWidget {
  int score ;

  ResultScreen({required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        title: Text("Results",style: TextStyle(color: AppColors.fifthColor),),
      ),
      body: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total correct answers",style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(height: 8,),
                Text("$score out of 6",style: TextStyle(color: AppColors.fifthColor,fontSize:25 ),),

              ],
            ),


            Center(
              child: Container(
                height: 350,
                width: 330,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Your final score is",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                        SizedBox(height: 12,),
                        CircleAvatar(
                          radius: 90,
                          backgroundColor: Color(0xffFAB62C),
                          child: Text(score.toString(),style: TextStyle(fontSize: 36,color: Colors.white),),
                        )
                      ],
                    ),
                    color: AppColors.sixthColor,

                  ),
                ),
              ),
            ),
            ButtonIcon(name: "Try Again", height: 60, width: 320, action: (){Navigate.navigateAndRemoveAll(context, HomeScreen());}, borderColor: AppColors.fourthColor, backgroundColor: AppColors.fourthColor, fontColor: Colors.white, fontSize: 25,iconData: Icons.cached),

          ],
        ),
      ),

    );
  }
}
