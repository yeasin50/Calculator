import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier {
  final ls = ["+", "-", "×", "÷", "√", "x2"];
  String prevTOP = "";
  String result = "";
  String currentNum = '';
  String _operate = '';
  // double result = 0.0;

  get topCurrent {
    // String top;
    // if (prevTOP!=null) top += prevTOP;
    // if (_operate!=null) top += prevTOP;
    if (prevTOP!=null)
      return prevTOP;
    else
      return "0";
  }

  void updateTopPrev() {
    prevTOP += _operate;
    notifyListeners();
  }

//setting last operation
  void setOperate([String _operator = ""]) {
    if (_operator != null) {
      _operate = _operator;
    }
    print(_operator);
    notifyListeners();
  }

  void clearOperator() {
    _operate = "";
    notifyListeners();
  }

//get last operation sign
  get getOperate {
    return _operate;
  }

//get current number typedin
  get getCurrenNum {
    var numb = currentNum;
    // currentNum = '';
    return numb;
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
    _operate = '';
    notifyListeners();
  }

  void addNumber(var number) {
    prevTOP += number.toString();
    prevTOP += (getOperate == null ? "" : getOperate);
    _operate = "";
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
