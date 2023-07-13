import 'package:flutter/material.dart';
import 'package:quizzles_app/core/components/button_icon.dart';
import 'package:quizzles_app/core/style/colors.dart';
import 'package:quizzles_app/core/utils/navigate.dart';
import 'package:quizzles_app/screens/home_screen.dart';

class ResultScreen extends StatelessWidget {
  int score;

  ResultScreen({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        title: const Text(
          "Results",
          style: TextStyle(color: AppColors.fifthColor),
        ),
      ),
      body: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Total correct answers",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "$score out of 6",
                  style: const TextStyle(color: AppColors.fifthColor, fontSize: 25),
                ),
              ],
            ),
            Center(
              child: SizedBox(
                height: 350,
                width: 330,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35)),
                    color: AppColors.sixthColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Your final score is",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        CircleAvatar(
                          radius: 90,
                          backgroundColor: const Color(0xffFAB62C),
                          child: Text(
                            score.toString(),
                            style: const TextStyle(
                                fontSize: 70,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ButtonIcon(
                name: "Try Again",
                height: 60,
                width: 320,
                action: () {
                  Navigate.navigateAndRemoveAll(context, const HomeScreen());
                },
                borderColor: AppColors.fourthColor,
                backgroundColor: AppColors.fourthColor,
                fontColor: Colors.white,
                fontSize: 25,
                iconData: Icons.cached),
          ],
        ),
      ),
    );
  }
}
