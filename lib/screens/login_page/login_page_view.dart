import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portifolio/core/components/my_decoration.dart';
import 'package:portifolio/core/constant/constant.dart';
import 'package:portifolio/core/constant/size_config.dart';
import 'package:portifolio/core/constant/text_styles.dart';
import 'package:portifolio/core/extensions/extensions.dart';

class LoginPageView extends StatelessWidget {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Column(
        children: [
          SvgPicture.asset(
            Constant.lafyuBlueLogo,
          ).op(t: 112, b: 8),
          Text("Welcome to Lafyuu", style: MyTextStyles.boldStyle).sp(v: 8),
          Text(
            "Sign in to continue",
            style: MyTextStyles.normalStyle,
          ).op(b: 28),
          TextFormField(
            decoration: MyDeco.forumDeco(
              hintText: "Your Email",
              perfixIcon: Icons.email_outlined,
            ),
          ),
          TextFormField(
            obscureText: true,
            decoration: MyDeco.forumDeco(
              hintText: "Your Password",
              perfixIcon: Icons.lock_outline,
            ),
          ).op(t: 8, b: 16),
          Container(
            child: Center(
              child: Text("Sign In", style: MyTextStyles.buttonTextStyle),
            ),
            height: getH(57),
            width: getW(343),
            decoration: MyDeco.containerDeco(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Constant.myDivider(),
              Text("OR", style: MyTextStyles.orTextStyle),
              Constant.myDivider(),
            ],
          ).op(t: 21),
        ],
      ).sp(h: 16),
    );
  }
}
