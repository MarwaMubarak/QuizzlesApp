import 'package:flutter/material.dart';
import 'package:quizzles_app/blocs/quiz/quiz_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizzles_app/core/components/button.dart';
import 'package:quizzles_app/core/components/button_icon.dart';
import 'package:quizzles_app/core/style/colors.dart';

import '../core/components/custom_button.dart';
import '../models/quiz_model.dart';

class QuizScreen extends StatelessWidget {
  QuizModel? quizModel ;
  int idx;
  QuizScreen({required this.quizModel,required this.idx});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuizCubit, QuizState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = QuizCubit.get(context);
        cubit.init(quizModel!,idx);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.primaryColor,
            title: Text("Level ${quizModel!.name}",style: TextStyle(color: AppColors.fifthColor,fontSize: 20,fontWeight: FontWeight.bold),),
            centerTitle: true,
          ),
          backgroundColor: AppColors.primaryColor,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${cubit.curQ+1}/6",style: TextStyle(fontSize: 16,color: AppColors.fifthColor,),),
                    Text(cubit.quiz.questions[cubit.curQ].question,style: TextStyle(fontSize: 26,color: Colors.white)),

                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 Image.asset(cubit.quiz.questions[cubit.curQ].image,height: 250,width: 250,),
                  Column(
                    children: [
                      CustomButton(name:cubit.quiz.questions[cubit.curQ].choices[0] , height: 55, width: 320, action: (){
                        cubit.selectAnswer(0);
                      }, borderColor: AppColors.thirdColor, backgroundColor: cubit.backgroundColor[cubit.curQ][0], fontColor: cubit.fontColor[cubit.curQ][0], fontSize: 25,num:1),
                      SizedBox(height: 8,),
                      CustomButton(name: cubit.quiz.questions[cubit.curQ].choices[1] , height: 55, width: 320, action: (){
                        cubit.selectAnswer(1);
                      }, borderColor: AppColors.thirdColor, backgroundColor: cubit.backgroundColor[cubit.curQ][1], fontColor: cubit.fontColor[cubit.curQ][1], fontSize: 25,num: 2),
                      SizedBox(height: 8,),
                      CustomButton(name: cubit.quiz.questions[cubit.curQ].choices[2] , height: 55, width: 320, action: (){
                        cubit.selectAnswer(2);
                      }, borderColor: AppColors.thirdColor, backgroundColor: cubit.backgroundColor[cubit.curQ][2], fontColor: cubit.fontColor[cubit.curQ][2], fontSize: 25,num: 3),
                      SizedBox(height: 8,),
                      CustomButton(name: cubit.quiz.questions[cubit.curQ].choices[3] , height: 55, width: 320, action: (){
                        cubit.selectAnswer(3);
                      }, borderColor: AppColors.thirdColor, backgroundColor: cubit.backgroundColor[cubit.curQ][3], fontColor: cubit.fontColor[cubit.curQ][3], fontSize: 25,num: 4),

                    ],
                  ),
                  SizedBox(height: 13,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Button(name: "Previous", height: 55, width: 125,
                          action: (){
                            cubit.previous(context);
                          },
                          borderColor: AppColors.fourthColor, backgroundColor: AppColors.fourthColor, fontColor: Colors.white, fontSize: 20),
                      Button(name: "Next", height: 55, width: 125,
                          action: (){
                              cubit.next(context);
                          },
                          borderColor: AppColors.fourthColor, backgroundColor: AppColors.fourthColor, fontColor: Colors.white, fontSize: 20),

                    ],

                  )

                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
