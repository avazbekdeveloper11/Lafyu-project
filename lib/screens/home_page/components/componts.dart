import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portifolio/core/components/my_decoration.dart';
import 'package:portifolio/core/constant/size_config.dart';
import 'package:portifolio/core/constant/text_styles.dart';
import 'package:portifolio/core/data/my_data.dart';
import 'package:portifolio/core/extensions/extensions.dart';

class HomepageComponents {
  static SizedBox categoryBuilder() {
    return SizedBox(
      height: getH(105),
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, __) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: getH(70),
                width: getH(70),
                decoration: MyDeco.withGoogleButtonDeco(radius: 66),
                child: Center(
                  child: SvgPicture.asset(MyData.categoryImg[__]["img"]),
                ),
              ),
              SizedBox(
                width: getW(70),
                height: getH(30),
                child: Center(
                  child: Text(
                    MyData.categoryImg[__]["name"],
                    textAlign: TextAlign.center,
                    style: MyTextStyles.normalStyleCategory,
                  ),
                ),
              )
            ],
          ).op(l: 12);
        },
        itemCount: MyData.categoryImg.length,
      ),
    );
  }
}
