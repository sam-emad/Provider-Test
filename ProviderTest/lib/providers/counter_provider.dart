import 'package:flutter/cupertino.dart';

class CounterProvider with ChangeNotifier {
  int count = 0;
  void incremant() {
    count++;
    notifyListeners();
  }

  void incrementdely() {
    count = 0 ;
    notifyListeners();
  }
}
