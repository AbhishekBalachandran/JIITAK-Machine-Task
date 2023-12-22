import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_task/utils/constants/color_constants/color_constants.dart';
import 'package:machine_task/utils/database/job_list/job_list.dart';
import 'package:machine_task/view/first_page/widgets/date_container/date_container.dart';
import 'package:machine_task/view/first_page/widgets/job_tile/job_tile.dart';
import 'package:machine_task/view/second_page/second_page.dart';
import 'package:machine_task/view/third_page/third_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      // app bar
      appBar: AppBar(
        toolbarHeight: height * 0.1,
        elevation: 0,
        backgroundColor: ColorConstants.primaryWhite,
        title: Text(
          '北海道, 札幌市',
          style: TextStyle(color: ColorConstants.primaryBlack),
        ),
        titleSpacing: 50,
        actions: [
          IconButton(
            onPressed: () => Get.to(() => StampDetail()),
            icon: Image.asset('assets/icons/Filter_icon (1).png'),
          ),
          IconButton(
            onPressed: () => Get.to(() => StampDetail()),
            icon: Icon(
              Icons.favorite_border,
              color: ColorConstants.primaryRed,
              size: 30,
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      // app bar end

      // floating action button
      floatingActionButton: FloatingActionButton(
          elevation: 5,
          backgroundColor: ColorConstants.primaryWhite,
          onPressed: () => Get.to(() => StampDetail()),
          child: Image.asset(
            'assets/icons/location.png',
            width: 28,
          )),
      // floating action button end

      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: height * 0.05,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: ColorConstants.bannerGradient,
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight)),
            child: Center(
              child: Text('2022年 5月 26日（木）'),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          // dates
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              SizedBox(
                width: 40,
              ),
              DateContainer(text: '木', date: '26', isCurrent: true),
              DateContainer(text: '金', date: '27', isCurrent: false),
              DateContainer(text: '土', date: '28', isCurrent: false),
              DateContainer(text: '日', date: '29', isCurrent: false),
              DateContainer(text: '月', date: '30', isCurrent: false),
              DateContainer(text: '火', date: '31', isCurrent: false),
              DateContainer(text: '水', date: '1', isCurrent: false),
            ]),
          ),
          // dates end

          SizedBox(
            height: 10,
          ),

          // part time job tile
          Expanded(
            child: ListView.builder(
              itemCount: jobList.length,
              itemBuilder: (context, index) => InkWell(
                  onTap: () => Get.to(() => StampDetail()),
                  child: JobTile(jobIndex: index)),
            ),
          ),
          // part time job tile end

          // buttons to navigate
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Get.to(() => StampDetail()),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: ColorConstants.bannerGradient)),
                    child: Center(
                      child: Text(
                        'Second page',
                        style: TextStyle(color: ColorConstants.primaryWhite),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Get.to(() => EditProfile()),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: ColorConstants.bannerGradient)),
                    child: Center(
                      child: Text(
                        'Third page',
                        style: TextStyle(color: ColorConstants.primaryWhite),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
          // buttons to navigate ends
        ],
      ),
    );
  }
}
