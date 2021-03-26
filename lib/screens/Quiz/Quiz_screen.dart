import 'package:flutter_example/screens/Quiz/components/body.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        //textbutton shows the back buton automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text("skip"),
          ),
        ],
      ),
      body: Body(),
    );
  }
}

// class Body extends StatelessWidget {
//   const Body({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         WebsafeSvg.asset(
//           "assets/icons/bg.svg",
//           width: MediaQuery.of(context).size.width,
//           // height: MediaQuery.of(context).size.height,
//           fit: BoxFit.cover,
//         ),
//       ],
//     );
//   }
// }
