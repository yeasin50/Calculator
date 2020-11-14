import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  const ScreenTitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 36,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(seconds: 1),
      curve: Curves.easeIn,
      builder: (BuildContext context, double _value, Widget child) {
        return Opacity(
          opacity: _value,
          child: Padding(
            padding: EdgeInsets.only(top: _value * 25),
            child: child,
          ),
        );
      },
    );
  }
}
