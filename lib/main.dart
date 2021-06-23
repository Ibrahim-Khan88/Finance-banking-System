import 'package:finance_banking_system/color/Color.dart';
import 'package:finance_banking_system/component/Home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: kBackgroundColor, accentColor: kAccentColor),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
