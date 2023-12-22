import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:machine_task/utils/constants/color_constants/color_constants.dart';
import 'package:machine_task/view/third_page/widgets/heading/heading.dart';

class Budget extends StatelessWidget {
  const Budget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // heading
        HeadingWidget(heading: '予算*'),

        // budget range
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            width: width * 0.9,
            child: Row(
              children: [
                // from
                Container(
                  width: width * 0.35,
                  height: height * 0.06,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorConstants.primaryGrey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '¥ 1,000',
                        style: TextStyle(
                            color: ColorConstants.primaryBlack,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorConstants.primaryGrey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '¥ 2,000',
                        style: TextStyle(
                            color: ColorConstants.primaryBlack,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
