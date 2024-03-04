import 'package:hexcolor/hexcolor.dart';
import 'package:portfolio_app/constants/colors.dart';
import 'package:portfolio_app/selectionbox/selectionbox3data.dart';

import 'package:flutter/cupertino.dart';

class SelectionBox3 extends StatefulWidget {
  const SelectionBox3({super.key});

  @override
  State<SelectionBox3> createState() => _SelectionBox3State();
}

class _SelectionBox3State extends State<SelectionBox3> {
  SelectionBox3Data selectedTime = SelectionBox3Data.al;

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      middle: CupertinoSlidingSegmentedControl<SelectionBox3Data>(
        backgroundColor: HexColor(grayComponentBackground),
        thumbColor: HexColor(white),
        groupValue: selectedTime,
        onValueChanged: (SelectionBox3Data? value) {
          if (value != null) {
            setState(() {
              selectedTime = value;
            });
          }
        },
        children: const <SelectionBox3Data, Widget>{
          SelectionBox3Data.al: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Satın Al",
                style: TextStyle(color: CupertinoColors.black),
              )),
          SelectionBox3Data.sat: Text(
            "Satış Yap",
            style: TextStyle(color: CupertinoColors.black),
          ),
        },
      ),
    );
  }
}
