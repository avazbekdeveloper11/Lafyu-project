import 'package:flutter/painting.dart';
import 'package:portifolio/core/colors/colors.dart';
import 'package:portifolio/core/constant/size_config.dart';

class MyTextStyles {
  // BOLD STYLENI O'ZI
  static TextStyle singleBoldStyle = TextStyle(
    fontSize: getW(18),
    fontWeight: FontWeight.w700,
    color: MyColors.primaryBlue,
  );

  // BOLD TEXT Size 14
  static TextStyle boldStyleMini = TextStyle(
    fontSize: getW(14),
    fontWeight: FontWeight.w700,
    color: MyColors.neutraDark,
  );

  // BOLD TEXT STYLE
  static TextStyle boldStyle = TextStyle(
    fontSize: getW(18),
    fontWeight: FontWeight.w700,
    color: MyColors.neutraDark,
  );
  // BOLD TEXT STYLE BLUE
  static TextStyle boldStyleBlue = TextStyle(
    fontSize: getW(18),
    fontWeight: FontWeight.w700,
    color: MyColors.primaryBlue,
  ); // BOLD TEXT STYLE BLUE
  static TextStyle boldStyledarkMini = TextStyle(
    fontSize: getW(14),
    fontWeight: FontWeight.w700,
    color: MyColors.primaryBlue,
  );
  // NORMAL TEXT STYLE ! YUPQA YOZUVLAR UCHUN >
  static TextStyle normalStyle = TextStyle(
    fontSize: getW(14),
    fontWeight: FontWeight.w400,
    color: MyColors.neutraGrey,
  );
  static TextStyle normalStyleCategory = TextStyle(
    fontSize: getW(12),
    fontWeight: FontWeight.w400,
    color: MyColors.neutraGrey,
  );
  // BUTTON TEXT STYLE
  static TextStyle buttonTextStyle = TextStyle(
    fontSize: getW(16),
    fontWeight: FontWeight.w700,
    color: MyColors.whiteColor,
  );
  // BUTTON TEXT STYLE
  static TextStyle orTextStyle = TextStyle(
    fontSize: getW(16),
    fontWeight: FontWeight.w700,
    color: MyColors.neutraGrey,
  );

  // NORMAL TEXT STYLE ! YUPQA YOZUVLAR UCHUN >
  static TextStyle normalRedStyle = TextStyle(
    fontSize: getW(14),
    fontWeight: FontWeight.w700,
    color: MyColors.primaryRed,
  );
}
