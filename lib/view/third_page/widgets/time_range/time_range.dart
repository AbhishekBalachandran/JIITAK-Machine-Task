import 'package:flutter/material.dart';
import 'package:machine_task/utils/constants/color_constants/color_constants.dart';
import 'package:machine_task/view/third_page/widgets/heading/heading.dart';

class TimeRange extends StatelessWidget {
  final String heading;
  final String from;
  final String to;
  const TimeRange(
      {super.key, required this.heading, required this.from, required this.to});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // heading
          HeadingWidget(heading: heading),
          // time range
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // from
                  Container(
                    width: width * 0.35,
                    height: height * 0.06,
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorConstants.primaryGrey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          from,
                          style: TextStyle(
                              color: ColorConstants.primaryBlack,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.expand_more,
                          color: ColorConstants.primaryGrey,
                          size: 30,
                        )
                      ],
                    )),
                  ),

                  // divider
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      '~',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),

                  // to
                  Container(
                    width: width * 0.35,
                    height: height * 0.06,
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorConstants.primaryGrey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          to,
                          style: TextStyle(
                              color: ColorConstants.primaryBlack,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.expand_more,
                          color: ColorConstants.primaryGrey,
                          size: 30,
                        )
                      ],
                    )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
