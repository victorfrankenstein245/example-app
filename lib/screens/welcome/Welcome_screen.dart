import 'package:flutter/material.dart';
import 'package:flutter_example/screens/Constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        WebsafeSvg.asset("assets/icons/bg.svg"),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  "lets play a game",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text("enter ur information below"),
                Spacer()
              ],
            ),
          ),
        )
      ]),
    );
  }
}
