import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home_widget.dart';
import 'icon_widget.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        HomeWidget(
          child: IconWidget(
            text: "Home",
            icon: FontAwesomeIcons.home,
          ),
        ),
        HomeWidget(
          child: IconWidget(
            text: "Profile",
            icon: FontAwesomeIcons.user,
          ),
        ),
        HomeWidget(
          child: IconWidget(
            text: "Like",
            icon: FontAwesomeIcons.heart,
          ),
        ),
        HomeWidget(
          child: IconWidget(
            text: "Blog",
            icon: FontAwesomeIcons.pencilAlt,
          ),
        ),
        HomeWidget(
          child: IconWidget(
            text: "Message",
            icon: FontAwesomeIcons.envelope,
          ),
        ),
        HomeWidget(
          child: IconWidget(
            text: "Setting",
            icon: FontAwesomeIcons.cog,
          ),
        ),
      ],
    );
  }
}
