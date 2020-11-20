import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier {
  final ls = ["+", "-", "×", "÷", "√", "x2", "="];
  String prevTOP = "";
  String currentNum = '';
  String tempOperator = '';

//TODO:: doing operation, makesure to add in clear
  // FIXME:: perform operation variables
  double _result;
  var _currentAsign;
  bool _showResult = false;

  get getShowResult {
    return _showResult;
  }

  get getResult {
    return _result != null ? _result : 0.0;
  }

  void startOperation() {
    if (!ls.contains(_currentAsign)) {
      var numb = num.parse(_currentAsign);
      performOpaeration(getResult, numb);
    }
    print("result " + _result.toString() + "\nOP" + getTempOP);
  }

  void performOpaeration(double prev, double newNUm) {
    // final ls = ["+", "-", "×", "÷", "√", "x2", "="];
    switch (tempOperator) {
      case "+":
        _result = (prev + newNUm);
        break;

      case "-":
        _result = prev - newNUm;
        break;

      case "×":
        _result = prev * newNUm;
        break;

      case "÷":
        _result = prev / newNUm;
        break;
    }
    notifyListeners();
  }

// end of operation

  /// Everything for UI
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
    _showResult = false;
    notifyListeners();
  }

  void clear() {
    prevTOP = "";
    // result = "";
    currentNum = '';
    tempOperator = '';
    notifyListeners();
  }

//perform topText and operation
  void addtoTOP(var number) {
    //feed number for operation to perform
    _currentAsign = number;
    prevTOP += number.toString();
    notifyListeners();
  }
}
