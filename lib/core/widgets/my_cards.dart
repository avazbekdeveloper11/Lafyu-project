import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portifolio/core/components/my_decoration.dart';
import 'package:portifolio/core/constant/constant.dart';
import 'package:portifolio/core/constant/size_config.dart';
import 'package:portifolio/core/constant/text_styles.dart';
import 'package:portifolio/core/extensions/extensions.dart';

class MyCard {
  static Container cardShop() {
    return Container(
      width: getW(165),
      decoration: MyDeco.withGoogleButtonDeco(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: getH(133),
            width: getH(133),
            decoration: MyDeco.withImageDeco(
              img: Constant.randomImage,
            ),
          ).op(t: 16, b: 8),
          Text(
            "FS - Nike Air Max 270 React...",
            style: MyTextStyles.boldStyleMini,
          ),
          Row(
            children: [
              SvgPicture.asset(Constant.starYellowIcon),
              SvgPicture.asset(Constant.starYellowIcon),
              SvgPicture.asset(Constant.starYellowIcon),
              SvgPicture.asset(Constant.starYellowIcon),
              SvgPicture.asset(Constant.starYellowIcon),
            ],
          ).op(t: 4),
          SizedBox(
            width: getW(133),
            height: getH(48),
            child: Text(
              "\$299,43",
              style: MyTextStyles.boldStyledarkMini,
            ).op(t: 16),
          ),
          Row(
            children: [
              Text("\$534,33", style: MyTextStyles.normalStyle),
              const Text("  "),
              Text("24% Off", style: MyTextStyles.normalRedStyle),
            ],
          ),
        ],
      ).sp(h: 16),
    );
  }
}
