import 'package:flutter/material.dart';
import 'package:portifolio/core/constant/size_config.dart';

class Constant {
  static String lafyuWhiteLogo = "assets/svg/lafyuWhite.svg";
  static String lafyuBlueLogo = "assets/svg/lafyuBlue.svg";

  // Divider 134 hajmda!
  static SizedBox myDivider() => SizedBox(
    width: getW(134),
    child: const Divider(),
  );
}
