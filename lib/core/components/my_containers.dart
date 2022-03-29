import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portifolio/core/components/my_decoration.dart';
import 'package:portifolio/core/constant/constant.dart';
import 'package:portifolio/core/constant/size_config.dart';
import 'package:portifolio/core/constant/text_styles.dart';
import 'package:portifolio/core/extensions/extensions.dart';

class MyCont {
  // PAGEVIEW CONTAINER
  static Container pageContainer({img}) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: getW(16), vertical: getH(16)),
      decoration: MyDeco.withImageDeco(img: img),
    );
  }

  // SEARCH CONTAINER
  static Container searchContainer() {
    return Container(
      width: getW(263),
      height: getH(46),
      decoration: MyDeco.withGoogleButtonDeco(),
      child: Row(
        children: [
          SvgPicture.asset(Constant.searchMiniIcon).op(l: 17, r: 10),
          Text("Search Product", style: MyTextStyles.normalStyle)
        ],
      ),
    );
  }
}
