import 'package:auth_app_firebase/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class AppStyle {
  static TextStyle onboardingBigText = TextStyle(
    fontSize: 21,
    fontFamily: "Roboto",
    fontWeight: FontWeight.bold,
    color: AppColor.black,
  );
  static TextStyle onboardingSmallText = TextStyle(
    fontSize: 15,
    fontFamily: "Roboto",
    fontWeight: FontWeight.normal,
    color: AppColor.black,
  );
  static TextStyle nextAndPrevious = TextStyle(
    fontSize: 15,
    fontFamily: "Roboto",
    fontWeight: FontWeight.normal,
    color: AppColor.blue,
  );
  static TextStyle login = TextStyle(
    fontSize: 15,
    fontFamily: "Roboto",
    fontWeight: FontWeight.bold,
    color: AppColor.white,
  );
  static TextStyle register = TextStyle(
    fontSize: 15,
    fontFamily: "Roboto",
    fontWeight: FontWeight.bold,
    color: AppColor.blue,
  );
}
