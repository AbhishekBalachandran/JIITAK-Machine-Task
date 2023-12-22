import 'package:get/get.dart';

class EditProfileController extends GetxController {
  RxList exteriorImages = [
    'assets/images/exterior.png',
    'assets/images/exterior.png',
  ].obs;
  RxList interiorImages = [
    'assets/images/interior.jpeg',
    'assets/images/interior.jpeg',
    'assets/images/interior.jpeg',
  ].obs;

  RxList foodImages = [
    'assets/images/food1.png',
    'assets/images/food2.png',
    'assets/images/food3.png',
  ].obs;

  RxList menuImages = [
    'assets/images/menu1.png',
    'assets/images/menu2.png',
    'assets/images/menu3.png',
  ].obs;
}
