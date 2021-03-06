import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';


class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 3,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/bg.jpeg",
              fit: BoxFit.cover,
            ),
            Container(
              color: darkColor.withOpacity(0.66),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Discover my Amazing \nArt Space!",
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                  MyBuildAnimatedText(),
                  SizedBox(height: defaultPadding,),
                  ElevatedButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: defaultPadding * 2,
                              vertical: defaultPadding
                          ),
                          backgroundColor: primaryColor
                      ),
                      onPressed: (){},
                      child: Text("EXPLORE NOW", style: TextStyle(color: darkColor),))
                ],
              ),
            ),
          ],
        )
    );
  }
}


class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          FlutterCodedText(),
          SizedBox(width: defaultPadding / 2,),
          Text("I build "),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText("Responsive web and mobile app", speed: Duration(milliseconds: 60),),
              TyperAnimatedText("Complete e-Commerce App UI", speed: Duration(milliseconds: 60),),
              TyperAnimatedText("Chat app with dark and light Theme", speed: Duration(milliseconds: 60),),
            ],
          ),
          SizedBox(width: defaultPadding / 2,),
          FlutterCodedText(),
        ],
      ),
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(
          text: "<",
          children: [
            TextSpan(
                text: "flutter",
                style: TextStyle(color: primaryColor)
            ),
            TextSpan(
                text: "> "
            ),
          ],
        )
    );
  }
}

