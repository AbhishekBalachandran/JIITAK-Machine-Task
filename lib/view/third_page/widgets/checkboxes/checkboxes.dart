import 'package:flutter/material.dart';
import 'package:machine_task/utils/constants/color_constants/color_constants.dart';

// ignore: must_be_immutable
class CheckBoxSection extends StatefulWidget {
  final String title;
  bool isChecked;
  CheckBoxSection({super.key, required this.title, required this.isChecked});

  @override
  State<CheckBoxSection> createState() => _CheckBoxSectionState();
}

class _CheckBoxSectionState extends State<CheckBoxSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10),
      child: Row(
        children: [
          // checkbox
          IconButton(
              onPressed: () {
                setState(() {
                  widget.isChecked = !widget.isChecked;
                });
              },
              icon: widget.isChecked
                  ? Icon(
                      Icons.check_box,
                      color: ColorConstants.primaryYellow,
                    )
                  : Icon(
                      Icons.check_box_outline_blank,
                      color: ColorConstants.primaryGrey,
                    )),

          // title
          Text(
            widget.title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
