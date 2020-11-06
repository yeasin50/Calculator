import 'package:flutter/material.dart';
import 'package:realTimeCalculator/screens/responsive_builder.dart';
import 'package:realTimeCalculator/widgets/gridButton.dart';
import 'package:realTimeCalculator/widgets/resultBox.dart';
import 'package:realTimeCalculator/widgets/topHistory.dart';

import "package:charcode/ascii.dart";
import "package:charcode/html_entity.dart";

class HomePage extends StatelessWidget {
  final historyText = "asd";
  List buttonNames = [
    "√",
    "x2",
    "7",
    "8",
    "9",
    "÷",
    "4",
    "5",
    "6",
    "×",
    "1",
    "2",
    "3",
    "−",
    "0",
    ".",
    "⌫",
    "+"
  ];

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
                      ButtonGrid(
                        "C",
                      ),
                      ButtonGrid("x2"),
                      ButtonGrid("√"),
                      ButtonGrid("÷"),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ButtonGrid("7"),
                      ButtonGrid("8"),
                      ButtonGrid("9"),
                      ButtonGrid("×"),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ButtonGrid("4"),
                      ButtonGrid("5"),
                      ButtonGrid("6"),
                      ButtonGrid("-"),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ButtonGrid("1"),
                      ButtonGrid("2"),
                      ButtonGrid("3"),
                      ButtonGrid("+"),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ButtonGrid("+/-"),
                      ButtonGrid("0"),
                      ButtonGrid("."),
                      ButtonGrid("="),
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
