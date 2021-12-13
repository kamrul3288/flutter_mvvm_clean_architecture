import 'package:flutter/material.dart';
import 'package:flutter_mvvm/base/view_state.dart';

class ViewModel extends ChangeNotifier {
  ScreenState state = ScreenState.INITIAL;
   String message  = "";

  initialState() {
    state = ScreenState.INITIAL;
    notifyListeners();
  }

  loadingState() {
    state = ScreenState.LOADING;
    notifyListeners();
  }

  successfulState() {
    state = ScreenState.SUCCESS;
    notifyListeners();
  }

  errorState() {
    state = ScreenState.ERROR;
    notifyListeners();
  }
}
