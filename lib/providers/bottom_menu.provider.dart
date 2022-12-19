import 'package:flutter/foundation.dart';

class BottomMenuProvider extends ChangeNotifier {
  int indexNumber = 3;

  setIndexNumber(index) {
    indexNumber = index;
  }

  getIndexNumber() {
    return indexNumber;
  }
}
