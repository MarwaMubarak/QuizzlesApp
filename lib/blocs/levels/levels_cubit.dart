import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizzles_app/core/shared_reference/shared_preference.dart';
import 'package:quizzles_app/core/style/colors.dart';
import 'package:quizzles_app/models/quiz_model.dart';

import '../../models/question_model.dart';
part 'levels_state.dart';

class LevelsCubit extends Cubit<LevelsState> {
  LevelsCubit() : super(LevelsInitial());
  static LevelsCubit get(context) => BlocProvider.of(context);

  List<Color> backgroundColor=[Color(0xff7B5CFB),Color(0xff1A9AFE),Color(0xffFD5C25),Color(0xff15B7A8),Color(0xffF933A8),Color(0xff3C2882),Color(0xff7B5CFB),Color(0xff1A9AFE),Color(0xffFD5C25),Color(0xff15B7A8)];

  final Map<String,QuizModel> quizzes={
    "01": QuizModel(score: 0, name: "01", questions: [
      QuestionModel(number: 1, question: "What is this ?", image: "assets/images/1.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 2, question: "What is this ?", image: "assets/images/2.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 3, question: "What is this ?", image: "assets/images/3.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 4, question: "What is this ?", image: "assets/images/4.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 5, question: "What is this ?", image: "assets/images/5.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 6, question: "What is this ?", image: "assets/images/6.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 7, question: "What is this ?", image: "assets/images/1.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
    ]),
    "02":  QuizModel(score: 0, name: "02", questions: [
      QuestionModel(number: 1, question: "What is this ?", image: "assets/images/1.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 2, question: "What is this ?", image: "assets/images/2.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 3, question: "What is this ?", image: "assets/images/3.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 4, question: "What is this ?", image: "assets/images/4.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 5, question: "What is this ?", image: "assets/images/5.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 6, question: "What is this ?", image: "assets/images/6.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 7, question: "What is this ?", image: "assets/images/1.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
    ]),
    "03": QuizModel(score: 0, name: "03", questions: [
      QuestionModel(number: 1, question: "What is this ?", image: "assets/images/1.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 2, question: "What is this ?", image: "assets/images/2.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 3, question: "What is this ?", image: "assets/images/3.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 4, question: "What is this ?", image: "assets/images/4.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 5, question: "What is this ?", image: "assets/images/5.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 6, question: "What is this ?", image: "assets/images/6.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 7, question: "What is this ?", image: "assets/images/1.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
    ]),
    "04": QuizModel(score: 0, name: "04", questions: [
      QuestionModel(number: 1, question: "What is this ?", image: "assets/images/1.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 2, question: "What is this ?", image: "assets/images/2.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 3, question: "What is this ?", image: "assets/images/3.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 4, question: "What is this ?", image: "assets/images/4.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 5, question: "What is this ?", image: "assets/images/5.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 6, question: "What is this ?", image: "assets/images/6.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 7, question: "What is this ?", image: "assets/images/1.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
    ]),
    "05": QuizModel(score: 0, name: "05", questions: [
      QuestionModel(number: 1, question: "What is this ?", image: "assets/images/1.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 2, question: "What is this ?", image: "assets/images/2.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 3, question: "What is this ?", image: "assets/images/3.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 4, question: "What is this ?", image: "assets/images/4.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 5, question: "What is this ?", image: "assets/images/5.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 6, question: "What is this ?", image: "assets/images/6.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 7, question: "What is this ?", image: "assets/images/1.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
    ]),
    "06": QuizModel(score: 0, name: "06", questions: [
      QuestionModel(number: 1, question: "What is this ?", image: "assets/images/1.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 2, question: "What is this ?", image: "assets/images/2.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 3, question: "What is this ?", image: "assets/images/3.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 4, question: "What is this ?", image: "assets/images/4.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 5, question: "What is this ?", image: "assets/images/5.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 6, question: "What is this ?", image: "assets/images/6.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 7, question: "What is this ?", image: "assets/images/1.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
    ]),
    "07": QuizModel(score: 0, name: "07", questions: [
      QuestionModel(number: 1, question: "What is this ?", image: "assets/images/1.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 2, question: "What is this ?", image: "assets/images/2.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 3, question: "What is this ?", image: "assets/images/3.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 4, question: "What is this ?", image: "assets/images/4.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 5, question: "What is this ?", image: "assets/images/5.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 6, question: "What is this ?", image: "assets/images/6.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 7, question: "What is this ?", image: "assets/images/1.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
    ]),
    "08":QuizModel(score: 0, name: "08", questions: [
      QuestionModel(number: 1, question: "What is this ?", image: "assets/images/1.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 2, question: "What is this ?", image: "assets/images/2.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 3, question: "What is this ?", image: "assets/images/3.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 4, question: "What is this ?", image: "assets/images/4.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 5, question: "What is this ?", image: "assets/images/5.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 6, question: "What is this ?", image: "assets/images/6.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 7, question: "What is this ?", image: "assets/images/1.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
    ]) ,
  };
  List<List<Color>>starColor=[[AppColors.star2Color,AppColors.star2Color,AppColors.star2Color,],
    [AppColors.star2Color,AppColors.star2Color,AppColors.star2Color,],
    [AppColors.star2Color,AppColors.star2Color,AppColors.star2Color,],
    [AppColors.star2Color,AppColors.star2Color,AppColors.star2Color,],
    [AppColors.star2Color,AppColors.star2Color,AppColors.star2Color,],
    [AppColors.star2Color,AppColors.star2Color,AppColors.star2Color,],
    [AppColors.star2Color,AppColors.star2Color,AppColors.star2Color,],
    [AppColors.star2Color,AppColors.star2Color,AppColors.star2Color,],
    [AppColors.star2Color,AppColors.star2Color,AppColors.star2Color,],
    [AppColors.star2Color,AppColors.star2Color,AppColors.star2Color,],];
  void calcScore(score,idx){

    if(score>0){
      starColor[idx][0]=AppColors.star1Color;
    }else{
      starColor[idx][0]=AppColors.star2Color;
    }

    if(score>=2){
      starColor[idx][1]=AppColors.star1Color;

    }else{
      starColor[idx][1]=AppColors.star2Color;
    }
    if(score>=4){
      starColor[idx][2]=AppColors.star1Color;

    }else{
      starColor[idx][2]=AppColors.star2Color;
    }
    emit(calcScoreState());
  }
  List<int>myState=[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,];
  init(){
    quizzes["01"]?.score=(SharedPreference.getData(key: "01")==null?0:SharedPreference.getData(key: "01"));
    quizzes["02"]?.score=(SharedPreference.getData(key: "02")==null?0:SharedPreference.getData(key: "02"));
    quizzes["03"]?.score=(SharedPreference.getData(key: "03")==null?0:SharedPreference.getData(key: "03"));
    quizzes["04"]?.score=(SharedPreference.getData(key: "04")==null?0:SharedPreference.getData(key: "04"));
    quizzes["05"]?.score=(SharedPreference.getData(key: "05")==null?0:SharedPreference.getData(key: "05"));
    quizzes["06"]?.score=(SharedPreference.getData(key: "06")==null?0:SharedPreference.getData(key: "06"));
    quizzes["07"]?.score=(SharedPreference.getData(key: "07")==null?0:SharedPreference.getData(key: "07"));
    quizzes["08"]?.score=(SharedPreference.getData(key: "08")==null?0:SharedPreference.getData(key: "08"));
    calcScore(quizzes["01"]?.score,0);
    calcScore(quizzes["02"]?.score,1);
    calcScore(quizzes["03"]?.score,2);
    calcScore(quizzes["04"]?.score,3);
    calcScore(quizzes["05"]?.score,4);
    calcScore(quizzes["06"]?.score,5);
    calcScore(quizzes["07"]?.score,6);
    calcScore(quizzes["08"]?.score,7);
    myState[0]=(quizzes["01"]!.score>0?1:0);
    for(int i=1;i<=7;i++){
      if(myState[0]==0) {
        break;
      }
      if(myState[i-1]>0&&quizzes["0${i+1}"]!.score==0){
        myState[i]=1;
        break;
      }
    }


    emit(initState());
  }


}
