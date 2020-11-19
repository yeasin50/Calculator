import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier {
  final ls = ["+", "-", "×", "÷", "√", "x2", "="];
  String prevTOP = "";
  String result = "";
  String currentNum = '';
  String tempOperator = '';
  double _result = 0.0;

//TODO:: generate result and set on resultBOx

  get getResult {
    return _result;
  }

  void updateResult() {
    // _result

    print(_result);
  }

  // history without temp sign
  get topCurrent {
    // String top;
    // if (prevTOP!=null) top += prevTOP;
    // if (_operate!=null) top += prevTOP;
    if (prevTOP != null)
      return prevTOP;
    else
      return "0";
  }

//setting temp operation
  void setTempOP(String op) {
    tempOperator = op;
    notifyListeners();
  }

  get getTempOP {
    return tempOperator;
  }

  void clearOP() {
    tempOperator = '';
    notifyListeners();
  }

//fix temp sing and Update UI
  void updateTOPtext() {
    prevTOP += tempOperator;
    tempOperator = '';
    notifyListeners();
  }

//get current number typedin
  get getCurrenNum {
    return currentNum;
  }

// This will set current number with digit changeable
  void clearCurrentNUmber() {
    currentNum = '';
    notifyListeners();
  }

// getting Digit, making Number
  void currentNumber(String digit) {
    currentNum += digit;
    notifyListeners();
  }

  void clear() {
    prevTOP = "";
    result = "";
    currentNum = '';
    tempOperator = '';
    notifyListeners();
  }

  void addNumber(var number) {
    prevTOP += number.toString();
    notifyListeners();
  }

// _scrollController
}
// ScrollController _scrollController = new ScrollController(
//   // initialScrollOffset: 0.5,
//   // keepScrollOffset: true,
// );
// Future<ScrollController> navAtTOP() async {
//   _scrollController.animateTo(0.50,
//       duration: const Duration(
//         milliseconds: 300,
//       ),
//       curve: Curves.easeOut);
//   return _scrollController;
// }

// Future<void> addOperate(String operate) async {
//   notifyListeners();
// }
