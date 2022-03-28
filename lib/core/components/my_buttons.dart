import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portifolio/core/components/my_decoration.dart';
import 'package:portifolio/core/constant/size_config.dart';
import 'package:portifolio/core/constant/text_styles.dart';

class MyButtons {
  static InkWell withSignButton({
    required String text,
    required String image,
    ontap,
  }) {
    return InkWell(
      child: Container(
        height: getH(57),
        width: getW(343),
        decoration: MyDeco.withGoogleButtonDeco(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(image),
            SizedBox(
              width: getW(277),
              child: Center(
                child: Text(
                  text,
                  style: MyTextStyles.orTextStyle,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  static Container myBlueButton({required String text}) {
    return Container(
      child: Center(
        child: Text(text, style: MyTextStyles.buttonTextStyle),
      ),
      height: getH(57),
      width: getW(343),
      decoration: MyDeco.containerDeco(),
    );
  }
}
