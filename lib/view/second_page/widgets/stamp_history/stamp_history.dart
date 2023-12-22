import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_task/view/third_page/third_page.dart';

class StampHistory extends StatelessWidget {
  const StampHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    List stampHistory = [
      {
        'date': '2021 / 11 / 18',
        'message': 'スタンプを獲得しました。',
        'number': '1 個',
      },
      {
        'date': '2021 / 11 / 17',
        'message': 'スタンプを獲得しました。',
        'number': '1 個',
      },
      {
        'date': '2021 / 11 / 16',
        'message': 'スタンプを獲得しました。',
        'number': '1 個',
      },
      {
        'date': '2021 / 11 / 13',
        'message': 'スタンプを獲得しました。',
        'number': '1 個',
      },
      {
        'date': '2021 / 11 / 12',
        'message': 'スタンプを獲得しました。',
        'number': '1 個',
      },
      {
        'date': '2021 / 11 / 11',
        'message': 'スタンプを獲得しました。',
        'number': '1 個',
      },
    ];
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView.separated(
            itemBuilder: (context, index) => InkWell(
                  onTap: () => Get.to(() => EditProfile()),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // date
                        SizedBox(
                          width: width * 0.8,
                          child: Text(
                            stampHistory[index]['date'],
                            style: TextStyle(
                                color: Color(0xFFB5B5B5),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                        ),

                        // message
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: width * 0.6,
                                  child: Text(
                                    stampHistory[index]['message'],
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  )),
                              SizedBox(
                                  width: width * 0.1,
                                  child: Text(
                                    stampHistory[index]['number'],
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
            separatorBuilder: (context, index) => Divider(),
            itemCount: stampHistory.length),
      ),
    );
  }
}
