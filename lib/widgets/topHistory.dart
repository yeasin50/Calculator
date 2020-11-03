import 'package:flutter/material.dart';

class TopHistory extends StatelessWidget {
  final String histo;

  TopHistory(this.histo);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 4,
        top: 16,
      ),
      width: double.infinity,
      child: Text(
        histo,
        textAlign: TextAlign.right,
      ),
    );
  }
}
