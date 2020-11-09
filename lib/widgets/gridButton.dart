import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:realTimeCalculator/providers/dataProvider.dart';
import 'package:provider/provider.dart';

class ButtonGrid extends StatelessWidget {
  ButtonGrid(this.text_);
  // ignore: non_constant_identifier_names
  final String text_;

  String get test => this.text_;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DataProvider>(context, listen: false);
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
            if (text_ == "C") {
              provider.clear();
              return;
            }
            if (provider.ls.contains(text_)) {
              provider
                ..addDigit(provider.currentNum + text_)
                ..setCurrent();
            }

            if (!provider.ls.contains(text_)) {
              provider.currentNumber(text_);
            }

            provider
              // ..addDigit((text_))
              ..navTOBotton();
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
            style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
