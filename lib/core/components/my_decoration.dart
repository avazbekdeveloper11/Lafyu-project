import 'package:flutter/material.dart';
import 'package:portifolio/core/colors/colors.dart';

class MyDeco {
  // TEXTFORUMFILEDNING DECORATIONI !
  static InputDecoration forumDeco(
          {String? hintText, required IconData perfixIcon}) =>
      InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(perfixIcon),
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

  static BoxDecoration withGoogleButtonDeco() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: MyColors.neutraGrey.withOpacity(0.4)),
    );
  }
}
