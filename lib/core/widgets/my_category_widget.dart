import 'package:flutter/material.dart';
import 'package:portifolio/core/constant/text_styles.dart';
import 'package:portifolio/core/extensions/extensions.dart';

class MycategoryWidget extends StatelessWidget {
  String category;
  String txButton;
  Function? onT;

  MycategoryWidget({
    Key? key,
    required this.category,
    this.onT,
    this.txButton = "See More",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(category, style: MyTextStyles.boldStyle),
        Text(txButton, style: MyTextStyles.boldStyleBlue).onT(ontap: onT),
      ],
    );
  }
}
