import 'package:flutter/foundation.dart';

class favitem with ChangeNotifier{
  List<int> _selecteditem = [];

  List<int> get selecteditem => _selecteditem;

  void additem(int value) {
    _selecteditem.add(value);
  }


}