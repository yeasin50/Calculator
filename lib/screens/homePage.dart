import 'package:flutter/material.dart';
import 'package:realTimeCalculator/screens/responsive_builder.dart';

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
            height: size.height / 2,
            color: Colors.red,
            
          );
        },
      ),
    );
  }
}

//  children: <Widget>[
//             TopHistory(historyText),
//             ResultBox(),
//             SizedBox(
//               height: 14,
//             )
//           ],
