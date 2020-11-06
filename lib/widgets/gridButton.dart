import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';

class ButtonGrid extends StatelessWidget {
  ButtonGrid(this.text_);
  final String text_;

  String get test => this.text_;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RaisedButton(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: Colors.grey[200], width: 1.5),
          ),
          onPressed: () {
            print(text_);
          },
          child: text_.length == 1 ? EasyRichText(text_) : buildEasyRichText(),
        ),
      ),
    );
  }

  EasyRichText buildEasyRichText() {
    return EasyRichText(
      text_,
      patternList: [
        if (text_ == "x2")
          EasyRichTextPattern(
            targetString: '2',
            stringBeforeTarget: 'x',
            matchWordBoundaries: false,
            superScript: true,
          ),
        if (text_ == "+/-")
          EasyRichTextPattern(
            targetString: "+",
            hasSpecialCharacters: true,
            superScript: true,
            matchWordBoundaries: false,
          ),
        EasyRichTextPattern(
          targetString: "-",
          subScript: true,
          matchWordBoundaries: false,
          style: TextStyle(fontWeight: FontWeight.bold)
        ),
      ],
    );
  }
}
