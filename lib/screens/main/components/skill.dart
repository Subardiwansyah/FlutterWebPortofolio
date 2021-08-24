import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/animated_progress_indicator.dart';
import 'package:flutter_portfolio/constants.dart';

class Skill extends StatelessWidget {
  const Skill({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Divider(),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding),
        child: Text(
          "Skill",
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ),
      Row(
        children: [
          Expanded(
            child: AnimatedCircularProgressIndicator(percentage: 0.8, label: "Flutter",),
          ),
          SizedBox(width: defaultPadding,),
          Expanded(
            child: AnimatedCircularProgressIndicator(percentage: 0.72, label: "Django",),
          ),
          SizedBox(width: defaultPadding,),
          Expanded(
            child: AnimatedCircularProgressIndicator(percentage: 0.65, label: "Firebase",),
          ),
        ],
      )
    ],);
  }
}