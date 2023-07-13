
import 'package:flutter/material.dart';
import 'package:quizzles_app/core/components/button.dart';
import 'package:quizzles_app/core/style/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzles_app/core/utils/navigate.dart';

import 'levels_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: AppColors.primaryColor,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset("assets/images/icon.png",height: 210,),
                  Text("Quizzles",style: GoogleFonts.nunito(fontSize: 50,color: AppColors.fifthColor,fontWeight: FontWeight.bold),),

                ],
              ),
              Column(
                children: [
                  const Text("Let's Play!",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold,height: 3)),
                  const Text("Play now and Level up",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold,height: 2)),

                ],
              ),
              Column(
                children: [
                  Button(
                    name: "Play Now",
                    fontColor: Colors.white,
                    fontSize: 25,
                    height: 55,
                    width: 290,
                    backgroundColor: AppColors.fourthColor,
                    borderColor: AppColors.fourthColor,
                    action: (){
                      Navigate.navigateWithBack(context, LevelsScreen());
                    },
                  ),
                  const SizedBox(height: 18,),
                  Button(name: "About", height: 55, width: 290, action: (){}, backgroundColor: AppColors.primaryColor, fontColor: AppColors.fourthColor, fontSize: 25,borderColor: AppColors.fourthColor,),


                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
