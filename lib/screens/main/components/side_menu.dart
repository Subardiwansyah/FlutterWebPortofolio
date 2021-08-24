import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/animated_progress_indicator.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/screens/main/components/area_info_text.dart';
import 'package:flutter_portfolio/screens/main/components/coding.dart';
import 'package:flutter_portfolio/screens/main/components/knowledges.dart';
import 'package:flutter_portfolio/screens/main/components/my_info.dart';
import 'package:flutter_portfolio/screens/main/components/skill.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoText(title: "Residence", text: "Indonesia",),
                  AreaInfoText(title: "City", text: "Jakarta",),
                  AreaInfoText(title: "Age", text: "32",),
                  Skill(),
                  SizedBox(height: defaultPadding,),
                  Coding(),
                  Knowledge(),
                  Divider(),
                  SizedBox(height: defaultPadding / 2,),
                  TextButton(
                    onPressed: (){},
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            "Download CV",
                            style: TextStyle(
                              color: Theme.of(context).textTheme.bodyText1!.color,
                            ),
                          ),
                          SizedBox(width: defaultPadding / 2,),
                          SvgPicture.asset("assets/icons/download.svg"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: defaultPadding),
                    color: Color(0xFF24242E),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(
                            onPressed: (){},
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: SvgPicture.asset("assets/icons/github.svg"),
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: SvgPicture.asset("assets/icons/twitter.svg"),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}





