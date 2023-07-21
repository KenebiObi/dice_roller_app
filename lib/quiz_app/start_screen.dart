import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});
  final void Function() switchScreen;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Opacity(
        //   opacity: 0.8,
        //   child: Image.asset(
        //     "assets/images/quiz-logo.png",
        //     width: 300.0,
        //   ),
        // ),
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 300.0,
          color: const Color.fromARGB(173, 255, 255, 255),
        ),
        const SizedBox(height: 50.0),
        const Text(
          "Learn FLutter the fun way!",
          style: TextStyle(
            fontSize: 20.0,
            color: Color.fromARGB(255, 237, 223, 252),
          ),
        ),
        const SizedBox(height: 50.0),
        OutlinedButton.icon(
          onPressed: () {
            switchScreen();
          },
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          label: const Text(
            "Start Quiz",
            style: TextStyle(),
          ),
          icon: const Icon(Icons.arrow_right),
        )
      ],
    );
  }
}
