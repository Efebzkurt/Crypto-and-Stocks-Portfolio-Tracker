import 'package:hexcolor/hexcolor.dart';
import 'package:portfolio_app/constants/colors.dart';
import 'package:portfolio_app/selectionbox/selectionboxdata.dart';
import 'package:flutter/cupertino.dart';

class SelectionBox extends StatefulWidget {
  const SelectionBox({super.key});

  @override
  State<SelectionBox> createState() => _SelectionBoxState();
}

class _SelectionBoxState extends State<SelectionBox> {
  SelectionBoxDataTime selectedTime = SelectionBoxDataTime.time1;

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      middle: CupertinoSlidingSegmentedControl<SelectionBoxDataTime>(
        backgroundColor: HexColor(grayComponentBackground),
        thumbColor: HexColor(white),
        groupValue: selectedTime,
        onValueChanged: (SelectionBoxDataTime? value) {
          if (value != null) {
            setState(() {
              selectedTime = value;
            });
          }
        },
        children: const <SelectionBoxDataTime, Widget>{
          SelectionBoxDataTime.time1: Text(
            "24s",
            style: TextStyle(color: CupertinoColors.black),
          ),
          SelectionBoxDataTime.time2: Text(
            "7g",
            style: TextStyle(color: CupertinoColors.black),
          ),
          SelectionBoxDataTime.time3: Text(
            "30g",
            style: TextStyle(color: CupertinoColors.black),
          ),
          SelectionBoxDataTime.time4: Text(
            "90g",
            style: TextStyle(color: CupertinoColors.black),
          ),
          SelectionBoxDataTime.time5: Text(
            "1 yıl",
            style: TextStyle(color: CupertinoColors.black),
          ),
          SelectionBoxDataTime.all: Text(
            "Tümü",
            style: TextStyle(color: CupertinoColors.black),
          ),
        },
      ),
    );
  }
}
