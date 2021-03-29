import 'package:flutter/material.dart';
import 'package:flutter_example/controllers/question_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:websafe_svg/websafe_svg.dart';

import '../../Constants.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF3F4768), width: 3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController>(
          init: QuestionController(),
          // stream: null,
          builder: (controller) {
            print(controller.animation.value);
            return Stack(
              children: [
                // LayoutBuilder provide us the available space for the conatiner
                // constraints.maxWidth needed for our animation
                LayoutBuilder(
                  builder: (context, constraints) => Container(
                    // from 0 to 1 it takes 60s
                    width: constraints.maxWidth * controller.animation.value,
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("18 sec"),
                        WebsafeSvg.asset("assets/icons/clock.svg"),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_example/controllers/question_controller.dart';
// import 'package:get/get.dart';
// import 'package:websafe_svg/websafe_svg.dart';

// import '../../Constants.dart';

// class ProgressBar extends StatelessWidget {
//   const ProgressBar({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: 35,
//       // color: Colors.white,
//       decoration: BoxDecoration(
//         border: Border.all(color: Color(0xFF3F4768), width: 3),
//         borderRadius: BorderRadius.circular(50),
//       ),
//       //added this after start annimation commant in question_controller.dart
//       child: GetBuilder<QuestionController>(
//         init: QuestionController(),
//         builder: (controller) {
//           print(controller.animation.value);
//           return Stack(
//             children: [
//               //layoutbuilder provides the available space for the conteiner
//               //constraints.maxwidth needed for animation
//               LayoutBuilder(
//                 builder: (context, constraints) => Container(
//                   //from 0 to 1 it takes 60 seconds
//                   width: constraints.maxWidth *
//                       controller.animation.value, //cover 50%
//                   decoration: BoxDecoration(
//                     gradient: kPrimaryGradient,
//                     borderRadius: BorderRadius.circular(50),
//                   ),
//                 ),
//               ),
//               Positioned.fill(
//                   child: Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("${(controller.animation.value * 60).round()} sec"),
//                     WebsafeSvg.asset("assets/icons/clock.svg"),
//                   ],
//                 ),
//               ))
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
