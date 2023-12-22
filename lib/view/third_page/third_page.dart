import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_task/controller/editprofile_controller/editprofile_controller.dart';
import 'package:machine_task/utils/constants/color_constants/color_constants.dart';
import 'package:machine_task/view/first_page/first_page.dart';
import 'package:machine_task/view/second_page/second_page.dart';
import 'package:machine_task/view/third_page/widgets/budget/budget.dart';
import 'package:machine_task/view/third_page/widgets/checkboxes/checkboxes.dart';
import 'package:machine_task/view/third_page/widgets/closing_day/closing_day.dart';
import 'package:machine_task/view/third_page/widgets/heading/heading.dart';
import 'package:machine_task/view/third_page/widgets/image_widget/image_widget.dart';
import 'package:machine_task/view/third_page/widgets/textbox_widget/textbox_widget.dart';
import 'package:machine_task/view/third_page/widgets/time_range/time_range.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final EditProfileController controller = EditProfileController();
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: ColorConstants.primaryWhite,

      // app bar
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryWhite,
        elevation: 0,
        toolbarHeight: height * 0.1,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.chevron_left,
              size: 30,
              color: Color.fromARGB(255, 184, 184, 184),
            )),
        title: Text(
          '店舗プロフィール編集',
          style: TextStyle(
            fontSize: 15,
            color: ColorConstants.primaryBlack,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Stack(
                children: [
                  Icon(
                    Icons.notifications_outlined,
                    size: 35,
                    color: Color.fromARGB(255, 75, 73, 72),
                  ),
                  Positioned(
                    right: -3,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorConstants.primaryYellow),
                      child: Center(
                        child: Text(
                          '99+',
                          style: TextStyle(
                              color: ColorConstants.primaryWhite, fontSize: 8),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      // app bar ends

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // text fields
              TextBox(heading: '店舗名', textMessage: 'Mer キッチン'),
              TextBox(heading: '代表担当者名', textMessage: '林田　絵梨花'),
              TextBox(heading: '店舗電話番号', textMessage: '123 - 4567 8910'),
              TextBox(heading: '店舗住所', textMessage: '大分県豊後高田市払田791-13'),
              // text fields ends

              // map
              Container(
                width: double.infinity,
                height: height * 0.4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/map.png'))),
              ),
              // map ends

              // store exterior section
              ImageContainer(
                  heading: '店舗外観',
                  sideHeading: '最大3枚まで',
                  images: controller.exteriorImages),
              // store exterior section ends

              // store interior section
              ImageContainer(
                  heading: '店舗内観',
                  sideHeading: '1枚〜3枚ずつ追加してください',
                  images: controller.interiorImages),
              // store interior section ends

              // food section
              ImageContainer(
                  heading: '料理写真',
                  sideHeading: '1枚〜3枚ずつ追加してください',
                  images: controller.foodImages),
              // food section ends

              // menu section
              ImageContainer(
                  heading: 'メニュー写真',
                  sideHeading: '1枚〜3枚ずつ追加してください',
                  images: controller.menuImages),
              // menu section ends

              // business hours
              TimeRange(heading: '営業時間', from: '10 : 00', to: '20 : 00'),
              // business hours ends

              // lunch hours
              TimeRange(heading: 'ランチ時間', from: '11 : 00 ', to: '15 : 00'),
              // lunch hours ends

              // closing days section
              ClosingDays(),
              // closing days section ends

              // food category
              HeadingWidget(heading: '料理カテゴリー*'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: width * 0.6,
                      height: height * 0.07,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorConstants.primaryGrey),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '料理カテゴリー選択',
                              style: TextStyle(
                                  color: ColorConstants.primaryGrey,
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
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // food category ends

              // budget section
              Budget(),
              // budget section ends

              // text field
              TextBox(heading: 'キャッチコピー', textMessage: '美味しい！リーズナブルなオムライスランチ！'),
              TextBox(heading: '座席数*', textMessage: '40席'),
              // text field ends

              // smoking area
              HeadingWidget(heading: '喫煙席'),
              Row(
                children: [
                  CheckBoxSection(
                    title: '有',
                    isChecked: true,
                  ),
                  CheckBoxSection(title: '無', isChecked: false)
                ],
              ),
              // smoking area ends

              // parking area
              HeadingWidget(heading: '駐車場'),
              Row(
                children: [
                  CheckBoxSection(
                    title: '有  ',
                    isChecked: true,
                  ),
                  CheckBoxSection(title: '無', isChecked: false)
                ],
              ),
              // parking area ends

              // gift section
              HeadingWidget(heading: '来店プレゼント'),
              Row(
                children: [
                  CheckBoxSection(
                    title: '有（最大３枚まで',
                    isChecked: true,
                  ),
                  CheckBoxSection(title: '無', isChecked: false)
                ],
              ),
              ImageContainer2(),
              // gift section ends

              // text field
              TextBox(heading: '来店プレゼント名', textMessage: 'いちごクリームアイスクリーム, ジュース'),
              // text field ends

              SizedBox(
                height: 20,
              ),

              // button
              Container(
                height: height * 0.06,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(120, 238, 126, 66),
                          Color.fromARGB(120, 255, 200, 171),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight)),
                child: Center(
                  child: Text(
                    '編集を保存',
                    style: TextStyle(
                        color: ColorConstants.primaryWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              // button ends

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
                            style:
                                TextStyle(color: ColorConstants.primaryWhite),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => Get.to(() => StampDetail()),
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
                            'Second page',
                            style:
                                TextStyle(color: ColorConstants.primaryWhite),
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
      ),
    );
  }
}
