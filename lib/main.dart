import 'package:flutter/material.dart';
import 'package:flutter_example/screens/Quiz/Quiz_screen.dart';
import 'package:flutter_example/screens/welcome/Welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: QuizScreen(),
    );
  }
}
