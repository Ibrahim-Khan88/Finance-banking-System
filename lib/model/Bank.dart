import 'package:flutter/cupertino.dart';

class Bank {
  String name;
  String type;
  String balance;
  String valid;
  String moreIcon;
  String cardBackground;
  Color bgColor;
  Color firstColor;
  Color secondColor;

  Bank(name, type, balance, valid, moreIcon, cardBackground, bgColor,
      firstColor, secondColor) {
    this.name = name;
    this.type = type;
    this.balance = balance;
    this.valid = valid;
    this.moreIcon = moreIcon;
    this.cardBackground = cardBackground;
    this.bgColor = bgColor;
    this.firstColor = firstColor;
    this.secondColor = secondColor;
  }
}
