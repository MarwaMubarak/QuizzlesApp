part of 'quiz_cubit.dart';

@immutable
abstract class QuizState {}

class QuizInitial extends QuizState {}
class nextState extends QuizState {}
class previousState extends QuizState {}
class initState extends QuizState {}
class selectState extends QuizState {}
class clearState extends QuizState {}




