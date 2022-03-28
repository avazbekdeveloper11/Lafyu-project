import 'package:flutter/material.dart';
import 'package:portifolio/core/constant/size_config.dart';

class Constant {
  static String lafyuWhiteLogo = "assets/svg/lafyuWhite.svg";
  static String lafyuBlueLogo = "assets/svg/lafyuBlue.svg";
  static String emailIcon = "assets/svg/emailIcon.svg";
  static String passwordIcon = "assets/svg/passwordIcon.svg";
  static String personIcon = "assets/svg/personIcon.svg";

  // Divider 134 hajmda!
  static SizedBox myDivider() => SizedBox(
        width: getW(134),
        child: const Divider(),
      );

  static const String emailValidate =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
}
