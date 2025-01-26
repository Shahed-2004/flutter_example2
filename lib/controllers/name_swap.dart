import 'package:flutter/foundation.dart';
import 'dart:math';

class NameSwapController extends ChangeNotifier {
  String _name = "baraa";
  String get name => _name;

  void swapName() {
    //random name
    var names = ["ibrahem", "baraa ", "youns"];
    var random = new Random();
    _name = names[random.nextInt(names.length)];
    notifyListeners();
  }
}
