import 'package:flutter/material.dart';
import 'package:sdc/app/app_colors.dart';

class AppStyle {
  //-----> medium text style
  static const mediumTextStyle = TextStyle(
    color: AppColor.yellowSecondary,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );
  static const mediumBoldTextStyle = TextStyle(
    color: AppColor.yellowSecondary,
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
  );
  static const mediumBlackTextStyle = TextStyle(
    color: AppColor.bgLight1,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  //-----> large text style
  static const largeTextStyle = TextStyle(
    color: AppColor.yellowSecondary,
    fontSize: 22.0,
    fontWeight: FontWeight.w400,
  );
  static const largeBoldTextStyle = TextStyle(
    color: AppColor.yellowSecondary,
    fontSize: 22.0,
    fontWeight: FontWeight.w700,
  );
  static const largeBlackTextStyle = TextStyle(
    color: AppColor.bgLight1,
    fontSize: 22.0,
    fontWeight: FontWeight.w700,
  );
  static const largeBlackBoldTextStyle = TextStyle(
    color: AppColor.bgLight1,
    fontSize: 22.0,
    fontWeight: FontWeight.w700,
  );

  //----->button text style
  static const mainDesktopBodyStyle = TextStyle(
    color: AppColor.whitePrimary,
    height: 1.5,
    fontSize: 30.0,
    fontWeight: FontWeight.w700,
  );
  static const mainMobileBodyStyle = TextStyle(
    color: AppColor.whitePrimary,
    height: 1.5,
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
  );
  static const buttonStyle = TextStyle(
    color: AppColor.whiteSecondary,
    wordSpacing: 2.0,
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
  );
  static const footerTextStyle = TextStyle(
    color: AppColor.whiteSecondary,
    fontWeight: FontWeight.w400,
  );
  static const projectTitleTextStyle = TextStyle(
    color: AppColor.whitePrimary,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );
  static const projectSubTitleTextStyle = TextStyle(
    color: AppColor.whiteSecondary,
    fontSize: 14,
  );
  static const textButtonStyle = TextStyle(
    color: AppColor.yellowSecondary,
    fontSize: 12,
  );
}
