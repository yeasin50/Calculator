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
  ScrollController _scrollController = new ScrollController(
      // initialScrollOffset: 0.5,
      // keepScrollOffset: true,
      );

  void navAtTOP() {
    _scrollController.animateTo(0.50,
        duration: const Duration(
          milliseconds: 300,
        ),
        curve: Curves.easeOut);
  }

  void navTOBotton() {
    _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(builder: (ctx, data, ch) {
      final data = Provider.of<DataProvider>(context);
      final prevText = data.data.prev;
    
      return Container(
          margin: const EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: 4,
            top: 16,
          ),
          width: double.infinity,
          child: SingleChildScrollView(
            // scrollDirection: Axis.horizontal,

            child: Text(
              prevText,
              textAlign: TextAlign.right,
            ),
          ));
    });
  }
}
