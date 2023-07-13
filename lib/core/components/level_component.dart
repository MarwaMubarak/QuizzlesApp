import 'package:flutter/material.dart';
import 'package:quizzles_app/core/components/level_component_helper.dart';
import 'package:quizzles_app/core/style/colors.dart';

class LevelComponent extends StatelessWidget {
  String name;
  int score;
  Color color;
  Color s1;
  Color s2;
  Color s3;
  bool lock;

  LevelComponent(
      {super.key,
      required this.name,
      required this.score,
      required this.color,
      required this.s1,
      required this.s2,
      required this.s3,
      required this.lock});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      width: 160,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                size: 40,
                color: s2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.star, size: 40, color: s1),
                  const SizedBox(
                    width: 70,
                  ),
                  Icon(Icons.star, size: 40, color: s3),
                ],
              ),
              const SizedBox(
                height: 180,
              ),
            ],
          ),
          Positioned(
              top: 30,
              height: 140,
              child:
                  LevelComponentHelper(name: name, score: score, color: color)),
          (lock == true)
              ? const Positioned(
                  top: 60,
                  left: 65,
                  child: Icon(
                    Icons.lock,
                    size: 40,
                    color: AppColors.star1Color,
                  ))
              : Container(),
        ],
      ),
    );
  }
}
