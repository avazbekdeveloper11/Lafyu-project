import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:portifolio/core/constant/size_config.dart';

extension WidgetExtension on Widget {
  //  PADDING SYMETRIC
  Widget sp({double h = 0.0, double v = 0.0}) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getW(h),
          vertical: getH(v),
        ),
        child: this,
      );

  //  PADDING ALL
  Widget all({double a = 0.0}) => Padding(
        padding: EdgeInsets.all(getH(a)),
        child: this,
      );

  //  PADDING ONLY
  Widget op({
    double r = 0.0,
    double l = 0.0,
    double t = 0.0,
    double b = 0.0,
  }) =>
      Padding(
        padding: EdgeInsets.only(
          right: getW(r),
          left: getW(l),
          top: getH(t),
          bottom: getH(b),
        ),
        child: this,
      );
}
