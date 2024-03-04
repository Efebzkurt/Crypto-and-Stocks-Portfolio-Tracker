import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:portfolio_app/constants/colors.dart';
import 'package:portfolio_app/selectionbox/selectionbox3.dart';

class IslemekleScreen extends StatefulWidget {
  const IslemekleScreen({super.key});

  @override
  State<IslemekleScreen> createState() => _IslemekleScreenState();
}

class _IslemekleScreenState extends State<IslemekleScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            backgroundColor: HexColor(backgroundColor),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 70),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: HexColor(black),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 100, 10),
                    child: Text(
                      "İşlem Ekle",
                      style: TextStyle(
                          color: HexColor(black),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SelectionBox3()
                ]),
              ),
            ),
          ),
        ));
  }
}
