import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;  

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.7,
            child: Image.asset(
              'assets/images/flutter_q.png',
              width: 300,
              height: 400,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Lern Flutter the Best Way',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
            onPressed: (){
              startQuiz();
            },
            style:OutlinedButton.styleFrom(
              foregroundColor: Colors.white70,
              backgroundColor:const Color.fromARGB(255, 13, 6, 99),
            ), 
            icon: const Icon(Icons.arrow_right_alt),
            	label:const Text('Start Quiz'),
            )
        ],
      ),
    );
  }
}
