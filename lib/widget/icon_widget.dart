import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final String text;
  final IconData icon;

  @override
  _IconWidgetState createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  Color contColor = Colors.white;
  Color fntColor = Colors.black;
  double icnTrn = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (a) {
          setState(() {
            fntColor = Colors.white;
            contColor = Colors.red;
            icnTrn = 1;
          });
        },
        onExit: (a) {
          setState(() {
            fntColor = Colors.black;
            contColor = Colors.white;
            icnTrn = 0;
          });
        },
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                alignment: Alignment.center,
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                  color: contColor,
                  border: Border.all(color: Colors.black),
                ),
                child: AnimatedRotation(
                  turns: icnTrn,
                  duration: const Duration(milliseconds: 800),
                  child: FaIcon(
                    widget.icon,
                    size: 30,
                    color: fntColor,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                widget.text,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
