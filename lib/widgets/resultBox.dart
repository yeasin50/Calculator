import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:realTimeCalculator/providers/dataProvider.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<DataProvider>(context);
    final result = data.getCurrenNum;

    return Consumer<DataProvider>(builder: (ctx, data, ch) {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 8,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ),
        width: double.infinity,
        child: Text(
          result,
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
    });
  }
}
