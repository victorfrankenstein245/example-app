import 'package:flutter/material.dart';
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
      // color: Colors.white,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF3F4768), width: 3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Stack(
        children: [
          //layoutbuilder provides the available space for the conteiner
          //constraints.maxwidth needed for animation
          LayoutBuilder(
            builder: (context, constraints) => Container(
              width: constraints.maxWidth * 0.5, //cover 50%
              decoration: BoxDecoration(
                gradient: kPrimaryGradient,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          Positioned.fill(
              child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("18 sec"),
                WebsafeSvg.asset("assets/icons/clock.svg"),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
