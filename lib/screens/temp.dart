import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';

class Painters extends StatelessWidget {
  const Painters({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Center(
              child: Container(
                child: EasyRichText(
                  "X2 ",
                  patternList: [
                    EasyRichTextPattern(
                      targetString: '2',
                      superScript: true,
                      stringBeforeTarget: 'X',
                      matchWordBoundaries: false,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
