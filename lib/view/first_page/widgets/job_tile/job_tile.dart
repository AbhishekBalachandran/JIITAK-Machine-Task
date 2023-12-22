import 'package:flutter/material.dart';
import 'package:machine_task/utils/constants/color_constants/color_constants.dart';
import 'package:machine_task/utils/database/job_list/job_list.dart';

class JobTile extends StatelessWidget {
  final jobIndex;
  const JobTile({super.key, required this.jobIndex});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            LayoutBuilder(
              builder: (context, constraints) => Container(
                width: double.infinity,
                height: constraints.maxWidth < 400
                    ? height * 0.3
                    : constraints.maxWidth < 600
                        ? height * 0.5
                        : constraints.maxWidth < 900
                            ? height * 0.7
                            : height * 0.9,
                decoration: BoxDecoration(
                  // image
                  image: DecorationImage(
                      image: AssetImage(jobList[jobIndex]['image']),
                      fit: BoxFit.contain),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: height * 0.04,
                      decoration: BoxDecoration(
                          color: ColorConstants.primaryRed,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        // days left
                        child: Text(
                          jobList[jobIndex]['days_left'],
                          style: TextStyle(color: ColorConstants.primaryWhite),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // title
                  SizedBox(
                    width: width * 0.8,
                    child: Text(
                      jobList[jobIndex]['title'],
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // type
                        Text(
                          jobList[jobIndex]['type'],
                          style: TextStyle(
                            color: Color(0xFFFAAA14),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),

                        // price
                        Text(
                          jobList[jobIndex]['price'],
                          style: TextStyle(
                              color: ColorConstants.primaryBlack,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.right,
                        )
                      ],
                    ),
                  ),

                  // date time
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          jobList[jobIndex]['date_time'],
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: ColorConstants.primaryBlack),
                        ),
                      ],
                    ),
                  ),

                  // address
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          jobList[jobIndex]['address'],
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: ColorConstants.primaryBlack),
                        ),
                      ],
                    ),
                  ),

                  // expense
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          jobList[jobIndex]['expense'],
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: ColorConstants.primaryBlack),
                        ),
                      ],
                    ),
                  ),

                  // provider name
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          jobList[jobIndex]['provider'],
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0x59303030)),
                        ),
                        Icon(
                          Icons.favorite_border,
                          size: 30,
                          color: Color(0x59303030),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
