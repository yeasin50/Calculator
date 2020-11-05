import 'package:flutter/material.dart';
import 'package:realTimeCalculator/screens/responsive_builder.dart';
import 'package:realTimeCalculator/widgets/gridButton.dart';
import 'package:realTimeCalculator/widgets/resultBox.dart';
import 'package:realTimeCalculator/widgets/topHistory.dart';

class HomePage extends StatelessWidget {
  final historyText = "asd";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text(
          "Standard",
        ),
        centerTitle: true,
      ),
      body: ResponsiveSafeArea(
        builder: (ctx, size) {
          return Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: size.height * .07,
                  child: TopHistory(historyText),
                ),
                Container(
                  height: size.height * .1,
                  child: ResultBox(),
                ),
                SizedBox(
                  height: size.height * .15,
                ),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ButtonGrid("1"),
                      ButtonGrid("1"),
                      ButtonGrid("1"),
                      ButtonGrid("1"),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ButtonGrid("1"),
                      ButtonGrid("1"),
                      ButtonGrid("1"),
                      ButtonGrid("1"),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ButtonGrid("1"),
                      ButtonGrid("1"),
                      ButtonGrid("1"),
                      ButtonGrid("1"),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ButtonGrid("1"),
                      ButtonGrid("1"),
                      ButtonGrid("1"),
                      ButtonGrid("1"),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ButtonGrid("1"),
                      ButtonGrid("1"),
                      ButtonGrid("1"),
                      ButtonGrid("1"),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * .15,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
