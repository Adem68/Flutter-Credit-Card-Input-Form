import 'package:flutter/material.dart';
import 'package:credit_card_input_form/constants/constanst.dart';

class StateProvider with ChangeNotifier {
  var _currentState = InputState.NUMBER;

  final _states = [
    InputState.NUMBER,
    InputState.NAME,
    InputState.VALIDATE,
    InputState.CVV,
    InputState.DONE
  ];

  var currentIndex = 0;

  void moveNextState() {
    if (currentIndex < _states.length - 1) {
      currentIndex++;
      _currentState = _states[currentIndex];
      notifyListeners();
    }
  }

  void movePrevState() {
    if (currentIndex > 0) {
      currentIndex--;
      _currentState = _states[currentIndex];
      notifyListeners();
    }
  }

  InputState getCurrentState() {
    return _currentState;
  }
}
