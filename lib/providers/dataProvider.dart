import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier {
  double result;
  String history;
  final keyResult = "result";
  final keyHistory = "history";

  DataProvider({this.result = 0.0, this.history = ""});

  void update(double resutl, String history) {
    this.history = history;
    this.result = resutl;
  }

  Map<String, dynamic> get results {
    Map map = {keyResult: result, keyHistory: history};
    return map;
  }
}
