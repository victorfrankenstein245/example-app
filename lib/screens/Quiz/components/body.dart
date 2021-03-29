import 'package:flutter/material.dart';
import 'package:flutter_example/models/Questions.dart';
import 'package:flutter_example/screens/Constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'progress_bar.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebsafeSvg.asset(
          "assets/icons/bg.svg",
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProgressBar(),
                SizedBox(
                  height: kDefaultPadding,
                ),
                //question header on 10 starts here
                Text.rich(
                  TextSpan(
                    text: "Question 1",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: kSecondaryColor),
                    children: [
                      TextSpan(
                          text: "/10",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: kSecondaryColor)),
                    ],
                  ),
                ),
                Divider(thickness: 1.5),
                SizedBox(height: kDefaultPadding),
                // end here
                QuestionCard(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            sample_data[0]["question"],
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: kBlsckColor),
          ),
          SizedBox(height: kDefaultPadding / 2),
          Option(),
          Option(),
          Option(),
          Option(),
        ],
      ),
    );
  }
}

class Option extends StatelessWidget {
  const Option({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        border: Border.all(color: kGrayColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "1. Test",
            style: TextStyle(color: kGrayColor),
          ),
          Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: kGrayColor),
            ),
          ),
        ],
      ),
    );
  }
}

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
//       child: Stack(
//         children: [
//           //layoutbuilder provides the available space for the conteiner
//           //constraints.maxwidth needed for animation
//           LayoutBuilder(
//             builder: (context, constraints) => Container(
//               width: constraints.maxWidth * 0.5, //cover 50%
//               decoration: BoxDecoration(
//                 gradient: kPrimaryGradient,
//                 borderRadius: BorderRadius.circular(50),
//               ),
//             ),
//           ),
//           Positioned.fill(
//               child: Padding(
//             padding: const EdgeInsets.symmetric(
//                 horizontal: kDefaultPadding / 2),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("18 sec"),
//                 WebsafeSvg.asset("assets/icons/clock.svg"),
//               ],
//             ),
//           ))
//         ],
//       ),
//     );
//   }
// }
