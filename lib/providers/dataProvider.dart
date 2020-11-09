import 'package:flutter/material.dart';

class Data {
  String prev;
  String result;
  Data(
    this.prev,
    this.result,
  );
}

class DataProvider with ChangeNotifier {
  final ls = ["+", "-", "×", "÷", "√", "x2"];
  Data data = new Data('0', '0');
  String currentNum = '';
  ScrollController controller = new ScrollController();

  void navTOBotton() async {
    controller.jumpTo(controller.position.maxScrollExtent);
    print("Nav to Bottom");
  }

  get getCurrenNum {
    var numb = currentNum;
    // currentNum = '';
    return numb;
  }

  void setCurrent() {
    currentNum = '';
    notifyListeners();
  }

  void currentNumber(String digit) {
    currentNum += digit;
    notifyListeners();
  }

  void update(Data data) {
    data = data;
  }

  Data get fetchData {
    return data;
  }

  void clear() {
    data = new Data("0", "0");
    currentNum = '';
    notifyListeners();
  }

  void addDigit(var digit) {
    String prevs = data.prev;
    prevs += digit.toString();
    data.prev = prevs;
    notifyListeners();
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

  Future<void> addOperate(String operate) async {
    notifyListeners();
  }

  Future<Data> equalPress() async {
    Data data_;

    notifyListeners();
    return data_;
  }
}
