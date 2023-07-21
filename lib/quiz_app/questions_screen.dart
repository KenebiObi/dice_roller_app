import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_udemy_app/quiz_app/models/questions.dart';
import 'package:new_udemy_app/quiz_app/models/quiz_question.dart';
import 'package:new_udemy_app/quiz_app/widgets/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    setState(() {
      currentQuestionIndex++;
      widget.onSelectAnswer(answer);
      print(widget.onSelectAnswer);
      print("tapped");
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[
        currentQuestionIndex]; // Selecting the questions in the list and assigning them to a variable
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.question,
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: 20.0,
                  color: const Color.fromARGB(255, 223, 181, 252),
                ),
              ),
              const SizedBox(height: 30.0),
              ...currentQuestion.getShuffledAnswers().map(
                    // this is used to dynamically
                    // display the list of widgets inside the column
                    // the three dots are used to add the nested list valuues to the
                    // main list i.e: [1, [2, 3, 4], 5] and cheages it to [1, 2, 3, 4, 4]

                    (answer) => AnswerButton(
                      answer,
                      () {
                        // this method is wrapped inside the curly brackets in order to pevent the method from beign run immediately the button is created
                        answerQuestion(answer); // it is wrapped in the
                        // anonymous function, i.e the curly brackets so that the method is executed only when the onTap function is triggered, i.e when the button is tapped
                      },
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
