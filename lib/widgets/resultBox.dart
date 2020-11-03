import 'package:flutter/material.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
       left: 10,
       right: 10,
       bottom: 16,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
      width: double.infinity,
      child: Text(
        "120.0",
        textAlign: TextAlign.end,
        style: TextStyle(
          fontSize: 33,
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[300],
          width: 2,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
