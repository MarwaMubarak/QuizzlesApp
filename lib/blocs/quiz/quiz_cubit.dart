import 'dart:math';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizzles_app/core/shared_reference/shared_preference.dart';
import 'package:quizzles_app/core/style/colors.dart';
import 'package:quizzles_app/core/utils/navigate.dart';
import 'package:quizzles_app/models/quiz_model.dart';
import 'package:quizzles_app/models/question_model.dart';
import 'package:quizzles_app/screens/levels_screen.dart';
import 'package:quizzles_app/screens/quiz_screen.dart';

import '../../screens/result_screen.dart';
part 'quiz_state.dart';

class QuizCubit extends Cubit<QuizState> {
  QuizCubit() : super(QuizInitial());
  static QuizCubit get(context) => BlocProvider.of(context);
  int selected=0;
  String curLevel="00";
  int curQ=0;
  late QuizModel quiz;
  int score=0;
  List<int>answer=[0,0,0,0,0,0,0];

  List<List<Color>>backgroundColor=[
    [AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor],
    [AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor],
    [AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor],
    [AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor],
    [AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor],
   [AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor]];
  List<List<Color>>fontColor=[
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white],
  ];
  void init(QuizModel quizModel,newCur){
    selected=0;
    curQ=newCur;
    curLevel=quizModel.name;
    quiz=quizModel;
    emit(initState());
  }
  void selectAnswer(int idx){

    if(quiz.questions[curQ].choices[idx]==quiz.questions[curQ].answer){
      answer[curQ]=1;
    }else{
      answer[curQ]=0;
    }
    backgroundColor[curQ][0]=AppColors.primaryColor;
    backgroundColor[curQ][1]=AppColors.primaryColor;
    backgroundColor[curQ][2]=AppColors.primaryColor;
    backgroundColor[curQ][3]=AppColors.primaryColor;
    fontColor[curQ][0]=Colors.white;
    fontColor[curQ][1]=Colors.white;
    fontColor[curQ][2]=Colors.white;
    fontColor[curQ][3]=Colors.white;


    selected=idx;
    backgroundColor[curQ][selected]=AppColors.fifthColor;
    fontColor[curQ][selected]=AppColors.primaryColor;

    print("${ backgroundColor[0]}   ${ backgroundColor[1]}   ${ backgroundColor[2]}   ${ backgroundColor[3]}   ");
    emit(selectState());
  }
  void next(context){
    if(curQ<5) {
      curQ++;
      Navigate.navigateAndRemoveAll(context, QuizScreen(idx: curQ,quizModel: quiz,));

    }
    else if(curQ==5){
      score=0;
      for(int i=0;i<7;i++){
        score+=answer[i];
        answer[i]=0;
      }
      backgroundColor=[
        [AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor],
        [AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor],
        [AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor],
        [AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor],
        [AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor],
        [AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor]];
      fontColor=[
        [Colors.white,Colors.white,Colors.white,Colors.white],
        [Colors.white,Colors.white,Colors.white,Colors.white],
        [Colors.white,Colors.white,Colors.white,Colors.white],
        [Colors.white,Colors.white,Colors.white,Colors.white],
        [Colors.white,Colors.white,Colors.white,Colors.white],
        [Colors.white,Colors.white,Colors.white,Colors.white],
      ];
      // print("-------------------------------------------------");
      // print(SharedPreference.getData(key: quiz.name));
      int mx=max(score, SharedPreference.getData(key: quiz.name));
      SharedPreference.saveData(key: quiz.name, value: mx);
      // print(mx);
      // print(SharedPreference.getData(key: quiz.name));
      // print("-------------------------------------------------");
      Navigate.navigateAndRemoveAll(context, ResultScreen(score: score));
    }
    emit(nextState());
  }

  void previous(context){
    if(curQ>0){
      curQ--;
      Navigate.navigateAndRemoveAll(context, QuizScreen(idx: curQ,quizModel: quiz,));
    }else if(curQ==0){
      score=0;
      for(int i=0;i<7;i++){
        answer[i]=0;
      }
      backgroundColor=[
        [AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor],
        [AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor],
        [AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor],
        [AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor],
        [AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor],
        [AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor,AppColors.primaryColor]];
      fontColor=[
        [Colors.white,Colors.white,Colors.white,Colors.white],
        [Colors.white,Colors.white,Colors.white,Colors.white],
        [Colors.white,Colors.white,Colors.white,Colors.white],
        [Colors.white,Colors.white,Colors.white,Colors.white],
        [Colors.white,Colors.white,Colors.white,Colors.white],
        [Colors.white,Colors.white,Colors.white,Colors.white],
      ];
      Navigate.navigateAndRemoveAll(context, LevelsScreen());

    }
    emit(previousState());
  }


}
