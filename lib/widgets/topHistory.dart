import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:realTimeCalculator/providers/dataProvider.dart';

class TopHistory extends StatefulWidget {
  @override
  _TopHistoryState createState() => _TopHistoryState();
}

class _TopHistoryState extends State<TopHistory> {
  ScrollController controller = new ScrollController();

  @override
  void initState() {
    controller.jumpTo(controller.position.maxScrollExtent);
    print("Nav to Bottom");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(builder: (ctx, data, ch) {
      final prevText = data.data.prev;

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
      return Container(
          margin: const EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: 4,
            top: 16,
          ),
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            //FIXME:: set end of line focus
            controller: controller,
            child: EasyRichText(
              prevText,
              // "A+",
              defaultStyle: TextStyle(
                fontSize: 20,
                color: Colors.blueAccent,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.right,
              patternList: patterList,
            ),
          ));
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
