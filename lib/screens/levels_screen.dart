import 'package:flutter/material.dart';
import 'package:quizzles_app/blocs/levels/levels_cubit.dart';
import 'package:quizzles_app/core/components/level_component.dart';
import 'package:quizzles_app/core/style/colors.dart';
import 'package:quizzles_app/core/utils/navigate.dart';
import 'package:quizzles_app/screens/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizzles_app/screens/quiz_screen.dart';

class LevelsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LevelsCubit, LevelsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = LevelsCubit.get(context);
        cubit.init();
        return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: AppColors.primaryColor,
              title: Text(
                "Levels",
                style: TextStyle(
                    color: AppColors.fifthColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            body: Center(
              child: Container(
                  child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 100.0,
                      mainAxisSpacing: 8.0,
                      children: List.generate(10, (index) {
                        return Center(
                          child: GestureDetector(
                            onTap: (){
                              Navigate.navigateWithBack(context, QuizScreen(quizModel:cubit.quizzes["01"],idx: 0,));
                            },
                            child: Container(
                              height: 120,
                              width: 120,
                              color: Colors.cyan,
                            ),
                          ),
                        );
                      }))
                  //LevelComponent(color: Colors.deepOrange,name: "55",score: 5,)
                  ),
            ));
      },
    );
  }
}
