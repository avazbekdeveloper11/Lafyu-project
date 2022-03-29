import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portifolio/core/colors/colors.dart';

class MyDeco {
  // TEXTFORUMFILEDNING DECORATIONI !
  static InputDecoration forumDeco(
          {String? hintText, required String perfixIcon}) =>
      InputDecoration(
        hintText: hintText,
        prefixIcon: SvgPicture.asset(
          perfixIcon,
          fit: BoxFit.none,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
      );

  // CONTAINERNING DECORATIONI !
  static BoxDecoration containerDeco() {
    return BoxDecoration(
      color: MyColors.primaryBlue,
      borderRadius: BorderRadius.circular(5),
      boxShadow: [
        BoxShadow(
          color: MyColors.primaryBlue.withOpacity(0.24),
          offset: const Offset(0.0, 15.0),
          blurRadius: 15.0,
        ),
      ],
    );
  }

  static BoxDecoration withGoogleButtonDeco({double radius = 5}) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(color: MyColors.neutraGrey.withOpacity(0.4)),
    );
  }

  static BoxDecoration withImageDeco({double radius = 5, required String img}) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(color: MyColors.neutraGrey.withOpacity(0.4)),
      image: DecorationImage(
        image: CachedNetworkImageProvider(img),
        fit: BoxFit.cover,
      ),
    );
  }
}
