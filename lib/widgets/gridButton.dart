import 'package:flutter/material.dart';

class ButtonGrid extends StatelessWidget {
  ButtonGrid(this.text);
  final String text;

  String get test => this.test;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: RaisedButton(
        onPressed: () {
          print(text);
        },
        child: Text(text),
      ),
    );
  }
}
