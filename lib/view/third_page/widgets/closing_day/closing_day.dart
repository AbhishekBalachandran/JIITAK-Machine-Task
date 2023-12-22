import 'package:flutter/cupertino.dart';
import 'package:machine_task/view/third_page/widgets/checkboxes/checkboxes.dart';
import 'package:machine_task/view/third_page/widgets/heading/heading.dart';

class ClosingDays extends StatelessWidget {
  const ClosingDays({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        // heading
        HeadingWidget(heading: '定休日'),

        // checkboxes
        SizedBox(
            width: double.infinity,
            child: Row(children: [
              CheckBoxSection(title: '月', isChecked: false),
              CheckBoxSection(title: '火', isChecked: false),
              CheckBoxSection(title: '水', isChecked: false),
              CheckBoxSection(title: '木', isChecked: false)
            ])),
        SizedBox(
            width: double.infinity,
            child: Row(children: [
              CheckBoxSection(title: '金', isChecked: false),
              CheckBoxSection(title: '土', isChecked: true),
              CheckBoxSection(title: '日', isChecked: true),
              CheckBoxSection(title: '祝', isChecked: true)
            ]))
      ]),
    );
  }
}
