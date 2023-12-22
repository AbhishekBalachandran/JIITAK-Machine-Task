import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_task/utils/constants/color_constants/color_constants.dart';
import 'package:machine_task/view/first_page/first_page.dart';
import 'package:machine_task/view/second_page/widgets/stamp_history/stamp_history.dart';
import 'package:machine_task/view/second_page/widgets/star_boxes/star_boxes.dart';
import 'package:machine_task/view/third_page/third_page.dart';

class StampDetail extends StatelessWidget {
  const StampDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: ColorConstants.containerBg,

      // appbar
      appBar: AppBar(
        toolbarHeight: height * 0.1,
        backgroundColor: ColorConstants.containerBg,
        elevation: 0,
        // back
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.all(18),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Color(0xFF949EFF),
            child: Center(
                child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.chevron_left,
                color: ColorConstants.primaryWhite,
              ),
            )),
          ),
        ),
        // back ends

        // title
        centerTitle: true,
        title: Text(
          'スタンプカード詳細',
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: ColorConstants.primaryWhite),
          textAlign: TextAlign.center,
        ),
        // title ends

        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => EditProfile());
              },
              icon: Image.asset('assets/icons/minus-circle.png'))
        ],
      ),
      // appbar ends

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mer キッチン',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: ColorConstants.primaryWhite),
                  textAlign: TextAlign.center,
                ),
                RichText(
                    textAlign: TextAlign.right,
                    text: TextSpan(children: [
                      TextSpan(
                          text: '現在の獲得数',
                          style: TextStyle(
                              fontSize: 14,
                              color: ColorConstants.primaryWhite,
                              fontWeight: FontWeight.w400)),
                      TextSpan(
                          text: '30 ',
                          style: TextStyle(
                              color: ColorConstants.primaryWhite,
                              fontSize: 28,
                              fontWeight: FontWeight.w700)),
                      TextSpan(
                          text: '個',
                          style: TextStyle(
                              fontSize: 14,
                              color: ColorConstants.primaryWhite,
                              fontWeight: FontWeight.w400))
                    ]))
              ],
            ),
          ),

          SizedBox(
            height: 20,
          ),

          // white container
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  color: ColorConstants.primaryWhite),
              child: Column(
                children: [
                  // star container
                  InkWell(
                      onTap: () => Get.to(() => EditProfile()),
                      child: StarContainer()),
                  // star container ends

                  // Stamp acquisition history heading
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'スタンプ獲得履歴',
                              style: TextStyle(
                                  color: ColorConstants.primaryBlack,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                              textAlign: TextAlign.left,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Stamp history section
                  StampHistory(),
                  // Stamp history section ends

                  // buttons to navigate
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () => Get.to(() => FirstPage()),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [
                                  Color.fromARGB(255, 238, 126, 66),
                                  Color.fromARGB(255, 255, 200, 171),
                                ])),
                            child: Center(
                              child: Text(
                                'First page',
                                style: TextStyle(
                                    color: ColorConstants.primaryWhite),
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
                                gradient: LinearGradient(colors: [
                                  Color.fromARGB(255, 238, 126, 66),
                                  Color.fromARGB(255, 255, 200, 171),
                                ])),
                            child: Center(
                              child: Text(
                                'Third page',
                                style: TextStyle(
                                    color: ColorConstants.primaryWhite),
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
            ),
          )
          // white container ends
        ],
      ),
    );
  }
}
