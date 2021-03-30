import 'package:flutter/material.dart';
import 'package:flutter_example/models/Questions.dart';

import '../../Constants.dart';
import 'body.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard(
      {Key key,
      // it means we have to pass this
      @required this.question})
      : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
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
