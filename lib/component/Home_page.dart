import 'package:finance_banking_system/color/Color.dart';
import 'package:finance_banking_system/model/Bank.dart';
import 'package:finance_banking_system/model/Transaction.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Bank> bankItem = [
    Bank("Ibrahim", "images/masterCard.png", "12,21.234", "06/24", "", "",
        kWhiteColor, kGreyColor, kBlackColor),
    Bank("Ibrahim", "images/jenius_pogo.png", "33,44.234", "06/11", "", "",
        kJeniusCardColor, kWhiteColor, kWhiteColor),
    Bank("Ibrahim", "images/masterCard.png", "76,88.234", "05/09", "", "",
        kWhiteColor, kGreyColor, kBlackColor),
    Bank("Ibrahim", "images/jenius_pogo.png", "35,66.234", "07/04", "", "",
        kJeniusCardColor, kWhiteColor, kWhiteColor),
    Bank("Ibrahim", "images/masterCard.png", "12,21.234", "06/24", "", "",
        kWhiteColor, kGreyColor, kBlackColor),
    Bank("Ibrahim", "images/jenius_pogo.png", "12,21.234", "06/24", "", "",
        kJeniusCardColor, kWhiteColor, kWhiteColor),
    Bank("Ibrahim", "images/masterCard.png", "12,21.234", "06/24", "", "",
        kWhiteColor, kGreyColor, kBlackColor)
  ];

  List<Transaction> trsnsactionItem = [
    Transaction("Outgoing", "", "7747", "Transfer to", "-",
        "images/masterCard.png", "Ibrahim Khan", kOrangeColor),
    Transaction("Incoming", "", "2345", "Received From", "+",
        "images/jenius_logo_white.png", "Rifat Hosen", kGreenColor),
    Transaction("Outgoing", "", "7747", "Transfer to", "-",
        "images/masterCard.png", "Ibrahim Khan", kOrangeColor),
    Transaction("Incoming", "", "2345", "Received From", "+",
        "images/jenius_logo_white.png", "Rifat Hosen", kGreenColor),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          elevation: 0,
          leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.black),
              padding: EdgeInsets.only(left: 8),
              onPressed: () {}),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: Container(
            height: 55,
            margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                colors: kGradientSlideButton,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                tileMode: TileMode.mirror,
                stops: const <double>[0.0, 1.0],
              ),
            ),
            child: Center(
              child: Text("Tap for Payment",
                  style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: kWhiteColor)),
            ),
          ),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(left: 24, top: 8, bottom: 16),
                  child: Text("Hi Ibrahim",
                      style: GoogleFonts.nunito(
                          fontSize: 20, fontWeight: FontWeight.w800))),
              Container(
                  height: 175,
                  child: ListView.builder(
                      padding: EdgeInsets.only(left: 16, right: 8),
                      scrollDirection: Axis.horizontal,
                      itemCount: bankItem.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 175,
                          width: 220,
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: bankItem[index].bgColor,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0.0, 8.0),
                                  blurRadius: 10,
                                  color: Color(0x10000000),
                                  spreadRadius: 4,
                                )
                              ]),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 12,
                                left: 12,
                                child: Image.asset(bankItem[index].type),
                                height: 30,
                                width: 30,
                              ),
                              Positioned(
                                  right: 12,
                                  top: 12,
                                  child: Text("Ibrahim",
                                      style: GoogleFonts.nunito(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: bankItem[index].secondColor))),
                              Positioned(
                                  left: 12,
                                  top: 65,
                                  child: Text("Your Balance",
                                      style: GoogleFonts.nunito(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: bankItem[index].secondColor))),
                              Positioned(
                                  left: 12,
                                  top: 85,
                                  child: Text("Tk " + bankItem[index].balance,
                                      style: GoogleFonts.nunito(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: bankItem[index].secondColor))),
                              Positioned(
                                  left: 12,
                                  bottom: 30,
                                  child: Text("Valid Thru ",
                                      style: GoogleFonts.nunito(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: bankItem[index].secondColor))),
                              Positioned(
                                  left: 12,
                                  bottom: 12,
                                  child: Text(bankItem[index].valid,
                                      style: GoogleFonts.nunito(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                          color: bankItem[index].secondColor))),
                              Positioned(
                                  right: 8,
                                  bottom: 8,
                                  child: Icon(
                                    Icons.more_horiz,
                                    color: bankItem[index].secondColor,
                                  ))
                            ],
                          ),
                        );
                      })),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 24, top: 32, bottom: 16, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Last Transaction",
                          style: GoogleFonts.nunito(
                              fontSize: 20, fontWeight: FontWeight.w800)),
                      Text("see all transactions",
                          style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: kBlueColor))
                    ],
                  )),
              Container(
                  height: 185,
                  child: ListView.builder(
                      padding: EdgeInsets.only(left: 16, right: 8),
                      scrollDirection: Axis.horizontal,
                      itemCount: trsnsactionItem.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 195,
                          width: 180,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              boxShadow: []),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 12,
                                left: 12,
                                child: Image.asset('images/rightSIgn.jpg'),
                                height: 20,
                                width: 20,
                              ),
                              Positioned(
                                  right: 12,
                                  top: 12,
                                  child: Text(trsnsactionItem[index].moneyType,
                                      style: GoogleFonts.nunito(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: trsnsactionItem[index]
                                              .textColor))),
                              Positioned(
                                  left: 12,
                                  top: 60,
                                  child: Text(
                                      trsnsactionItem[index].sign +
                                          "Tk " +
                                          trsnsactionItem[index].amount,
                                      style: GoogleFonts.nunito(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: trsnsactionItem[index]
                                              .textColor))),
                              Positioned(
                                  left: 12,
                                  top: 95,
                                  child: Text(
                                      trsnsactionItem[index].submittedToOrFrom,
                                      style: GoogleFonts.nunito(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey[700]))),
                              Positioned(
                                  left: 12,
                                  top: 112,
                                  child: Text(trsnsactionItem[index].name,
                                      style: GoogleFonts.nunito(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700))),
                              Positioned(
                                  left: 12,
                                  top: 140,
                                  child: Text("12 Sep 2019",
                                      style: GoogleFonts.nunito(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey[800]))),
                              Positioned(
                                  right: 12,
                                  bottom: 20,
                                  child: Image.asset(
                                      trsnsactionItem[index].type,
                                      height: 20,
                                      width: 20))
                            ],
                          ),
                        );
                      })),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 24, top: 22, bottom: 10, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Top Up Again",
                          style: GoogleFonts.nunito(
                              fontSize: 20, fontWeight: FontWeight.w800)),
                    ],
                  )),
              Container(
                height: 304,
                child: ListView.builder(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    itemCount: bankItem.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 10),
                        height: 70,
                        decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x04000000),
                                  //color: Colors.black,
                                  blurRadius: 10,
                                  spreadRadius: 10,
                                  offset: Offset(0, 8.0))
                            ]),
                        child: ListTile(
                          leading: Icon(
                            Icons.file_copy_rounded,
                            color: Colors.blue[400],
                          ),
                          title: Text(bankItem[index].name,
                              style: GoogleFonts.nunito(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                          subtitle: Text(bankItem[index].name,
                              style: GoogleFonts.nunito(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[800])),
                          trailing: Text("+98**** *****2342",
                              style: GoogleFonts.nunito(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[800])),
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
