import 'package:flutter/cupertino.dart';

class Transaction {
  String moneyType;
  String inOrOutpic;
  String amount;
  String submittedToOrFrom;
  String sign;
  String type;
  String name;
  Color textColor;

  Transaction(moneyType, inOrOutpic, amount, submittedToOrFrom, sign, type,
      name, textColor) {
    this.moneyType = moneyType;
    this.inOrOutpic = inOrOutpic;
    this.amount = amount;
    this.submittedToOrFrom = submittedToOrFrom;
    this.sign = sign;
    this.type = type;
    this.name = name;
    this.textColor = textColor;
  }
}
