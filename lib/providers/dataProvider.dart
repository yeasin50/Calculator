import 'package:flutter/material.dart';

class Data {
   String prev;
   String result;

  Data({
    this.prev='0',
    this.result='0',
  });
}

class DataProvider with ChangeNotifier {
  Data data;
  void update(Data data) {
    data = data;
  }

  Data get fetchData async {
    return data;
  }

  Future<void> addDigit(var digit) async {
    String prevs = data.prev;
    prevs += digit.toString();
    data.prev = prevs;
    notifyListeners();
  }

  Future<void> addOperate(String operate) async {
    notifyListeners();
  }

  Future<Data> equalPress() async {
    Data data_;

    notifyListeners();
    return data_;
  }
}
