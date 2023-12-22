import 'package:flutter/cupertino.dart';
import 'package:machine_task/utils/constants/color_constants/color_constants.dart';

class HeadingWidget extends StatelessWidget {
  final String heading;
  const HeadingWidget({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return // heading
        Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            heading,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: ColorConstants.primaryBlack),
          ),
          Text(
            '*',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: ColorConstants.primaryRed),
          )
        ],
      ),
    );
  }
}
