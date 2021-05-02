import 'package:flutter/cupertino.dart';

// использовал для media part так как картинки на большом экране съезжали с места и использовал для кнопки add friend
// умножал на процентное соотношение виджета к экрану в процентах
class SizeConfig {
  static MediaQueryData mediaQueryData;
  static double screenWidth;

  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData.size.width;
  }
}
