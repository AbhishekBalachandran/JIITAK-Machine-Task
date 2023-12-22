import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:machine_task/utils/constants/color_constants/color_constants.dart';
import 'package:machine_task/view/third_page/widgets/heading/heading.dart';

class TextBox extends StatefulWidget {
  final String heading;
  final String textMessage;
  const TextBox({super.key, required this.heading, required this.textMessage});

  @override
  State<TextBox> createState() => _TextBoxState();
}

class _TextBoxState extends State<TextBox> {
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    controller.text = widget.textMessage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // heading
          HeadingWidget(heading: widget.heading),

          // textfield
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorConstants.primaryGrey)),
              ),
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
