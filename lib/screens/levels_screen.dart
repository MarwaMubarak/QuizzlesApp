import 'package:flutter/material.dart';
import 'package:quizzles_app/blocs/levels/levels_cubit.dart';
import 'package:quizzles_app/core/components/level_component.dart';
import 'package:quizzles_app/core/components/level_component_helper.dart';
import 'package:quizzles_app/core/shared_reference/shared_preference.dart';
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
          backgroundColor: AppColors.primaryColor,
          body: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        GestureDetector(
                            onTap: (){
                              String level="0${2*index+1}";
                              int idx=2*index;
                              (cubit.myState[idx]>=0?
                              Navigate.navigateWithBack(context, QuizScreen(quizModel:cubit.quizzes[level],idx: 0,)):(){});
                            },
                            child: LevelComponent(
                              color: cubit.backgroundColor[2*(index)],
                              score: SharedPreference.getData(key: "0${2*(index)+1}")==null?0:SharedPreference.getData(key:"0${2*(index)+1}"),
                              name: ((2*(index)+1!=10)?"0${2*(index)+1}":"10"),
                              s1: cubit.starColor[2*(index)][0],
                              s2: cubit.starColor[2*(index)][1],
                              s3: cubit.starColor[2*(index)][2],
                              lock: cubit.myState[2*(index)]==-1,
                            )
                        ),
                        SizedBox(width: 5,),
                        GestureDetector(
                          onTap: (){
                            String level="0${2*index+2}";
                            int idx=2*index+1;
                            (cubit.myState[idx]>=0?
                            Navigate.navigateWithBack(context, QuizScreen(quizModel:cubit.quizzes[level],idx: 0,)):(){});
                          },
                          child: LevelComponent(
                            color: cubit.backgroundColor[2*(index)+1],
                            score:SharedPreference.getData(key:"0${2*(index)+2}")==null?0:SharedPreference.getData(key: "0${2*(index)+2}"),
                            name: ((2*(index)+2!=10)?"0${2*(index)+2}":"10"),
                            s1: cubit.starColor[2*(index)+1][0],
                            s2: cubit.starColor[2*(index)+1][1],
                            s3: cubit.starColor[2*(index)+1][2],
                            lock: cubit.myState[2*(index)+1]==-1,
                          ),

                        ),
                      ],
                    )



                  ],
                ),
                );
            },
          ),
        );
      },
    );
  }
}


//LevelComponent(color: cubit.backgroundColor[2*(index)],score: (SharedPreference.getData(key: ((2*(index)+1!=10)?"0${2*(index)+1}":"10"))==null?0:SharedPreference.getData(key: ((2*(index)+1!=10)?"0${2*(index)+1}":"10"))),name: ((2*(index)+1!=10)?"0${2*(index)+1}":"10"),)
//LevelComponent(color: cubit.backgroundColor[2*(index)+1],score: (SharedPreference.getData(key: ((2*(index)+2!=10)?"0${2*(index)+2}":"10"))==null?0:SharedPreference.getData(key: ((2*(index)+2!=10)?"0${2*(index)+2}":"10"))),name: ((2*(index)+2!=10)?"0${2*(index)+2}":"10"),),

// GestureDetector(
// onTap: (){
// String level= (index!=10)?"0${index+1}":"10";
// Navigate.navigateWithBack(context, QuizScreen(quizModel:cubit.quizzes[level],idx: 0,));
// },
// child: LevelComponent(color: Colors.indigo,score: (SharedPreference.getData(key: ((index!=10)?"0${index+1}":"10"))==null?0:SharedPreference.getData(key: ((index!=10)?"0${index+1}":"10"))),name: ((index!=10)?"0${index+1}":"10"),)
// ),
// s1: cubit.starColor[2*(index)+1][0],s2: cubit.starColor[2*(index)+1][1],s3: cubit.starColor[2*(index)+1][2],
// s1: cubit.starColor[2*(index)+2][0],s2: cubit.starColor[2*(index)+2][1],s3: cubit.starColor[2*(index)+2][2],