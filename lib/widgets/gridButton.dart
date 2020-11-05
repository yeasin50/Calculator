import 'package:flutter/material.dart';

class ButtonGrid extends StatelessWidget {
  ButtonGrid(this.text);
  final String text;

  String get test => this.test;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: Colors.grey, width: 2),
          ),
          onPressed: () {
            print(text);
          },
          child: Text(text),
        ),
      ),
    );
  }
}
