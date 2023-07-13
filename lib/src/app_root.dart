import 'package:flutter/material.dart';
import 'package:quizzles_app/blocs/levels/levels_cubit.dart';
import 'package:quizzles_app/blocs/quiz/quiz_cubit.dart';
import 'package:quizzles_app/screens/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (BuildContext context) => LevelsCubit()),
          BlocProvider(create: (BuildContext context) => QuizCubit()),

        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        ));
  }
}
