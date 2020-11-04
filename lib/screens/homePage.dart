import 'package:flutter/material.dart';
import 'package:realTimeCalculator/widgets/gridButton.dart';
import 'package:realTimeCalculator/widgets/resultBox.dart';
import 'package:realTimeCalculator/widgets/topHistory.dart';

class HomePage extends StatelessWidget {
  final buttonData = [
   "sq", "rt","c","<",
    "7", "8", "9", "/",
    "4", "5", "6", "*",
    "1", "2", "3", "-",
    ".", "0", "eq","+"
  ];
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
      body: Column(
        children: <Widget>[
          TopHistory(historyText),
          ResultBox(),
          buildGridView(),
        ],
      ),
    );
  }

  Expanded buildGridView() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 4 / 3,

            /// [width]/[height] ratio
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            return ButtonGrid(buttonData[index]);
          },
          itemCount: 20,
        ),
      ),
    );
  }
}
