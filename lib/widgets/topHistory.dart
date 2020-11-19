import 'dart:async';

import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:realTimeCalculator/providers/dataProvider.dart';
import 'package:realTimeCalculator/widgets/_rives/thinking.dart';

class TopHistory extends StatefulWidget {
  @override
  _TopHistoryState createState() => _TopHistoryState();
}

class _TopHistoryState extends State<TopHistory> {
  String prevText = "PPP";
  // StreamController<String> _streamController;

  @override
  void didChangeDependencies() {
    // controller.jumpTo(controller.position.maxScrollExtent);
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
    // _streamController = new StreamController<String>();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(builder: (ctx, data, ch) {
      final String prevText = data.topCurrent.toString() + data.tempOperator;
      print("On TOpHistory  " + prevText);

      // void update() {
      //   setState(() {
      //     // controller = data.controller;
      //     controller.jumpTo(controller.position.maxScrollExtent);
      //     print("Nav to Bottom");
      //   });
      //   // return controller;
      // }

// TODO:: adding Color on operation
      final ls = ["+", "-", "×", "÷", "√", "x2"];
      List<EasyRichTextPattern> patterList = [];
      ls.forEach((element) {
        patterList.add(
          buildEasyRichTextPattern(element),
        );
      });
      // controller.jumpTo(controller.position.maxScrollExtent);
      return Container(
        margin: EdgeInsets.only(
          right: 8,
          bottom: 4,
          top: 4,
        ),
        width: double.infinity,
        // child: SingleChildScrollView(
        // scrollDirection: Axis.horizontal,
        //FIXME:: set end of line focus, No need with FittedBox
        // controller: controller,
        child: Row(
          children: <Widget>[
            Container(
              width: 70,
              height: 70,
              child: ThinkingRive(),
              // child: Text("Container"),
            ),
            Expanded(
              child: FittedBox(
                child: EasyRichText(
                  prevText.isEmpty ? " " : prevText,
                  // "A+",
                  defaultStyle: TextStyle(
                    // fontSize: 20,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.right,
                  patternList: patterList,
                ),
              ),
            ),
          ],
        ),
      );
      // );
    });
  }

  EasyRichTextPattern buildEasyRichTextPattern(String str) {
    return EasyRichTextPattern(
      targetString: str,
      hasSpecialCharacters: true,
      matchWordBoundaries: false,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.red,
      ),
    );
  }
}
