import 'package:flutter/material.dart';
import 'package:quizapp/question_screen.dart';
import 'package:quizapp/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  Widget? activeScreen ;
  
  @override
  void initState() {
    activeScreen = StartScreen(switchScren);
    super.initState();
  }

  void switchScren(){
    setState(() {
      activeScreen=const QuestionScreen();
    });
  }
  @override
  Widget build(context){
    return
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 59, 206, 199),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(99, 232, 232, 41),
                Color.fromARGB(200, 0, 206, 255),
                Color.fromARGB(255, 128, 39, 230),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: activeScreen,
          ),
        ),
      ),
    );
  }
}