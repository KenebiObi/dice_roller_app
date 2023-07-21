import 'package:flutter/material.dart';
import 'package:new_udemy_app/quiz_app/models/questions.dart';
import 'package:new_udemy_app/quiz_app/start_screen.dart';
import 'package:new_udemy_app/quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var initialScreen = "start_screen";
  @override
  // void initState() {
  //   initialScreen = StartScreen(switchScreen);
  //   // TODO: implement initState
  //   super.initState();
  // }

  void switchScreen() {
    setState(
      () {
        initialScreen = "questions_screen";
      },
    );
  }

  List<String> selectedAnswers = [];

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(
        () {
          initialScreen = "start_screen";
          selectedAnswers = [];
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (initialScreen == "questions_screen") {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: screenWidget,
          ),
        ),
      ),
    );
  }
}
