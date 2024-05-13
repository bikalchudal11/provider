import 'package:flutter/material.dart';

class SettingsProvider with ChangeNotifier {
  String txtToShow = "Hi flutter";
  double fontSize = 18;
  double boxBorderWidth = 5;
  double boxBorderRadius = 0;
  double boxHeight = 200;
  double boxWidth = 200;
  Color textColor = Colors.black;
  Color boxColor = Colors.white;

  updateTxtToShow(String txt) {
    txtToShow = txt;
    notifyListeners();
  }

  updateTextColor(Color txtColor) {
    textColor = txtColor;
    notifyListeners();
  }

  updateBoxColor(Color boxC) {
    print(boxColor);
    boxColor = boxC;
    notifyListeners();
  }

  incrementFontSize() {
    fontSize++;
    notifyListeners();
  }

  decrementFontSize() {
    fontSize--;
    notifyListeners();
  }

  incrementBoxBorderWidth() {
    boxBorderWidth++;
    notifyListeners();
  }

  decrementBoxBorderWidth() {
    boxBorderWidth--;
    notifyListeners();
  }

  incrementBoxBorderRadius() {
    boxBorderRadius++;
    notifyListeners();
  }

  decrementBoxBorderRadius() {
    boxBorderRadius--;
    notifyListeners();
  }

  incrementBoxHeight() {
    boxHeight = boxHeight + 10;
    notifyListeners();
  }

  decrementBoxHeight() {
    boxHeight = boxHeight - 10;
    notifyListeners();
  }

  incrementBoxWidth() {
    boxWidth = boxWidth + 10;
    notifyListeners();
  }

  decrementBoxWidth() {
    boxWidth = boxWidth - 10;
    notifyListeners();
  }

  SettingsProvider() {
    print("Provider Created");
  }
}
