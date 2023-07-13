import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizzles_app/core/components/level_component.dart';
import 'package:quizzles_app/core/shared_reference/shared_preference.dart';
import 'package:quizzles_app/models/quiz_model.dart';

import '../../models/question_model.dart';
part 'levels_state.dart';

class LevelsCubit extends Cubit<LevelsState> {
  LevelsCubit() : super(LevelsInitial());
  static LevelsCubit get(context) => BlocProvider.of(context);
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
    "09": QuizModel(score: 0, name: "09", questions: [
      QuestionModel(number: 1, question: "What is this ?", image: "assets/images/1.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 2, question: "What is this ?", image: "assets/images/2.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 3, question: "What is this ?", image: "assets/images/3.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 4, question: "What is this ?", image: "assets/images/4.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 5, question: "What is this ?", image: "assets/images/5.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 6, question: "What is this ?", image: "assets/images/6.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 7, question: "What is this ?", image: "assets/images/1.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
    ]),
    "10": QuizModel(score: 0, name: "10", questions: [
      QuestionModel(number: 1, question: "What is this ?", image: "assets/images/1.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 2, question: "What is this ?", image: "assets/images/2.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 3, question: "What is this ?", image: "assets/images/3.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 4, question: "What is this ?", image: "assets/images/4.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 5, question: "What is this ?", image: "assets/images/5.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 6, question: "What is this ?", image: "assets/images/6.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
      QuestionModel(number: 7, question: "What is this ?", image: "assets/images/1.jpg", choices: ["marwa","ahmed","mohamed","mubarak"], answer: "marwa"),
    ]),
  };

  init(){
    quizzes["01"]?.score=(SharedPreference.getData(key: "01")==null?0:SharedPreference.getData(key: "01"));
    quizzes["02"]?.score=(SharedPreference.getData(key: "02")==null?0:SharedPreference.getData(key: "02"));
    quizzes["03"]?.score=(SharedPreference.getData(key: "03")==null?0:SharedPreference.getData(key: "03"));
    quizzes["04"]?.score=(SharedPreference.getData(key: "04")==null?0:SharedPreference.getData(key: "04"));
    quizzes["05"]?.score=(SharedPreference.getData(key: "05")==null?0:SharedPreference.getData(key: "05"));
    quizzes["06"]?.score=(SharedPreference.getData(key: "06")==null?0:SharedPreference.getData(key: "06"));
    quizzes["07"]?.score=(SharedPreference.getData(key: "07")==null?0:SharedPreference.getData(key: "07"));
    quizzes["08"]?.score=(SharedPreference.getData(key: "08")==null?0:SharedPreference.getData(key: "08"));
    quizzes["09"]?.score=(SharedPreference.getData(key: "09")==null?0:SharedPreference.getData(key: "09"));
    quizzes["10"]?.score=(SharedPreference.getData(key: "10")==null?0:SharedPreference.getData(key: "10"));

  }


}
