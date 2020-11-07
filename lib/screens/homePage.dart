import 'package:flutter/material.dart';
import 'package:realTimeCalculator/providers/dataProvider.dart';
import 'package:realTimeCalculator/screens/responsive_builder.dart';
import 'package:realTimeCalculator/widgets/gridButton.dart';
import 'package:realTimeCalculator/widgets/resultBox.dart';
import 'package:realTimeCalculator/widgets/topHistory.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<DataProvider>(context, listen: false);
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
                  child: Consumer<DataProvider>(
                    builder: (ctx, data, ch) {
                      String histo = data.fetchData.prev==null?"0":data.fetchData.prev;
                      return TopHistory(histo);
                    },
                  ),
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
