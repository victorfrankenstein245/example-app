import 'dart:ffi';

import 'package:flutter/animation.dart';
import 'package:flutter_example/models/Questions.dart';
// import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

//we use get package for our state managemant
class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
// animate progress bar
  AnimationController _animationController;
  Animation _animation;

//so that we can accessour animation from outside
  Animation get animation => this._animation;

  List<Question> _questions = sample_data
      .map(
        (question) => Question(
            id: question["id"],
            question: question["question"],
            options: question["option"],
            answer: question["answer_index"]),
      )
      .toList();

  List<Question> get questions => this._questions;

//called immediately after the widget allocates memory
  @override
  // ignore: missing_return
  Void onInit() {
    // animation duration is 60 seconds
    //so progress bar needs to fill within 60 seconds
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        //update like state
        update();
      });
    //start our aniation
    _animationController.forward();
    super.onInit();
  }
}
