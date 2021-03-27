import 'dart:ffi';

import 'package:flutter/animation.dart';
import 'package:flutter/gestures.dart';
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

//called immediately after the widget allocates memory
  @override
  Void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    super.onInit();
  }
}
