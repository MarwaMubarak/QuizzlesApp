import 'package:quizzles_app/models/question_model.dart';

class QuizModel{
  int score=0;
  String name;
  List<QuestionModel>questions;
  QuizModel({required this.score,required this.name,required this.questions});
}