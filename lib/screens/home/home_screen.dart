import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/screens/home/components/home_banner.dart';
import 'package:flutter_portfolio/screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      HomeBanner(),
      Row(
        children: [
          TweenAnimationBuilder(
              tween: IntTween(begin: 0, end: 100),
              duration: Duration(seconds: 5),
              builder: (context, value, child) =>
                  Text(
                    "${value}+",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: primaryColor
                    ),
                  ),
          )
        ],
      ),
    ],
    );
  }
}
