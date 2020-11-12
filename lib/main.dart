import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:realTimeCalculator/animation_/sandBox.dart';
import 'package:realTimeCalculator/providers/dataProvider.dart';
import 'package:realTimeCalculator/screens/temp.dart';
import './screens/homePage.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<DataProvider>(
          create: (context) => DataProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SandBox(),
    );
  }
}
