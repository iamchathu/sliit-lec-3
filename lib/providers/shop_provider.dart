import 'package:flutter/cupertino.dart';

class ShopProvider extends ChangeNotifier {
  int _qty = 0;

  int get qty => _qty;

  void increment() {
    _qty++;
    notifyListeners();
  }

  void decrement() {
    if (_qty != 0) {
      _qty--;
      notifyListeners();
    }
  }

  void reset() {
    _qty = 0;
    notifyListeners();
  }
}
