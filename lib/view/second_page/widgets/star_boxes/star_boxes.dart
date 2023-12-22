import 'package:flutter/material.dart';
import 'package:machine_task/utils/constants/color_constants/color_constants.dart';

class StarContainer extends StatelessWidget {
  const StarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: double.infinity,
        height: height * 0.28,
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: ColorConstants.primaryWhite,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: constraints.maxWidth < 500
                      ? 5
                      : constraints.maxWidth < 750
                          ? 6
                          : constraints.maxWidth < 900
                              ? 8
                              : 12),
              itemCount: 15,
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icons/Group 200.png'))),
              ),
            );
          },
        ),
      ),
    );
  }
}
