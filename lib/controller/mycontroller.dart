import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:diceapp/utils/image_const.dart';

class MyController with ChangeNotifier {
  int randomNumber = 0;
  List dicesImages = [
    ImageConstantsRed.dice1,
    ImageConstantsRed.dice2,
    ImageConstantsRed.dice3,
    ImageConstantsRed.dice4,
    ImageConstantsRed.dice5,
    ImageConstantsRed.dice6,
    ImageConstantsWhite.dice1,
    ImageConstantsWhite.dice2,
    ImageConstantsWhite.dice3,
    ImageConstantsWhite.dice4,
    ImageConstantsWhite.dice5,
    ImageConstantsWhite.dice6,
  ];
  generate() {
    randomNumber = Random().nextInt(6);
    print(randomNumber);
    notifyListeners();
  }
}
