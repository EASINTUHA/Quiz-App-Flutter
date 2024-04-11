import 'package:quizapp/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
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
          child: const Center(
            child: StartScreen(),
          ),
        ),
      ),
    ),
  );
}
