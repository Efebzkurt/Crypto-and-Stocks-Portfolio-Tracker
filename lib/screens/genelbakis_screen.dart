import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:portfolio_app/constants/colors.dart';
import 'package:portfolio_app/components/selectionbox/selectionbox.dart';

class GenelBakisScreen extends StatefulWidget {
  const GenelBakisScreen({super.key});

  @override
  State<GenelBakisScreen> createState() => _GenelBakisScreenState();
}

class _GenelBakisScreenState extends State<GenelBakisScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "MainFont"),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: HexColor(backgroundColor),
          body: Column(
            children: [
              //Başlık
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 50, 0, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Genel Bakıs",
                    style: TextStyle(
                      color: HexColor(black1),
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "34.200,50TL",
                    style: TextStyle(
                      color: HexColor(black1),
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "+5400",
                    style: TextStyle(
                      color: HexColor(green),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              //Grafik Zaman Seçimi
              const Align(
                alignment: Alignment.topCenter,
                child: SelectionBox(),
              ),
              //Grafik
              Align(
                alignment: Alignment.topCenter,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: HexColor(mainColorDark)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 80, horizontal: 80),
                    child: Text(
                      "Günlük Değişim Grafiği",
                      style: TextStyle(color: HexColor(white)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
