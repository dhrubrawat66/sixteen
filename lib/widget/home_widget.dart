import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  double contreLeft = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 500,
      child: MouseRegion(
        onEnter: (a) {
          setState(() {
            contreLeft = 20;
          });
        },
        onExit: (a) {
          setState(() {
            contreLeft = 0;
          });
        },
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            AnimatedPositioned(
              top: 5,
              left: contreLeft,
              child: widget.child,
              duration: const Duration(milliseconds: 300),
            ),
          ],
        ),
      ),
    );
  }
}
