import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:portfolio_app/constants/colors.dart';
import 'package:portfolio_app/selectionbox/selectionbox2.dart';

class PortfoyumScreen extends StatefulWidget {
  const PortfoyumScreen({super.key});

  @override
  State<PortfoyumScreen> createState() => _PortfoyumScreenState();
}

class _PortfoyumScreenState extends State<PortfoyumScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "MainFont"),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        backgroundColor: HexColor(backgroundColor),
        body: const Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 50), child: SelectionBox2()),
          ],
        ),
      )),
    );
  }
}
