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
  Data data = new Data('0', '0');
  void update(Data data) {
    data = data;
  }

  Data get fetchData {
    return data;
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

  // void navTOBotton() {
  //   _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
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
