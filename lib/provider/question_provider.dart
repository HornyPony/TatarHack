import 'package:flutter/cupertino.dart';

class QuestionProvider with ChangeNotifier {
  bool _isRightAnswered = false;

  void rightAnswered() {
    _isRightAnswered = true;
    notifyListeners();
  }

  void falseAnswered() {
    _isRightAnswered = false;
    notifyListeners();
  }

  get isRightAnswered {
    return _isRightAnswered;
  }
}
