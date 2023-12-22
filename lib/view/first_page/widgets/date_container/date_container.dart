import 'package:flutter/cupertino.dart';
import 'package:machine_task/utils/constants/color_constants/color_constants.dart';

class DateContainer extends StatelessWidget {
  final String text;
  final String date;
  final bool isCurrent;
  const DateContainer(
      {super.key,
      required this.text,
      required this.date,
      required this.isCurrent});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Container(
      height: height * 0.1,
      width: width * 0.12,
      decoration: BoxDecoration(
          color: isCurrent
              ? ColorConstants.bannerColor
              : ColorConstants.primaryWhite,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // text
          Text(
            text,
            style: TextStyle(
                color: isCurrent
                    ? ColorConstants.primaryWhite
                    : ColorConstants.primaryBlack,
                fontSize: 17,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 5,),
          // date
          Text(
            date,
            style: TextStyle(
                color: isCurrent
                    ? ColorConstants.primaryWhite
                    : ColorConstants.primaryBlack,
                fontSize: 17,
                fontWeight: FontWeight.w700),
          )
        ],
      )),
    );
  }
}
