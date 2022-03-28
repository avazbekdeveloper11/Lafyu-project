import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portifolio/core/components/my_buttons.dart';
import 'package:portifolio/core/components/my_decoration.dart';
import 'package:portifolio/core/constant/constant.dart';
import 'package:portifolio/core/constant/size_config.dart';
import 'package:portifolio/core/constant/text_styles.dart';
import 'package:portifolio/core/extensions/extensions.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordAginController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Column(
        children: [
          SvgPicture.asset(
            Constant.lafyuBlueLogo,
          ).op(t: 155, b: 8),
          Text("Let’s Get Started", style: MyTextStyles.boldStyle).sp(v: 8),
          Text("Sign in to continue", style: MyTextStyles.normalStyle)
              .op(b: 28),
          TextFormField(
            controller: _fullNameController,
            decoration: MyDeco.forumDeco(
              hintText: "Full Name",
              perfixIcon: Icons.person,
            ),
            validator: (v) {},
          ),
          TextFormField(
            controller: _emailController,
            obscureText: true,
            decoration: MyDeco.forumDeco(
              hintText: "Your Email",
              perfixIcon: Icons.email_outlined,
            ),
            validator: (v) {},
          ).sp(v: 8),
          TextFormField(
            controller: _passwordController,
            obscureText: true,
            decoration: MyDeco.forumDeco(
              hintText: "Password",
              perfixIcon: Icons.lock_outline,
            ),
            validator: (v) {},
          ),
          TextFormField(
            controller: _passwordAginController,
            obscureText: true,
            decoration: MyDeco.forumDeco(
              hintText: "Password Again",
              perfixIcon: Icons.lock_outline,
            ),
            validator: (v) {},
          ).op(t: 8, b: 16),
          MyButtons.myBlueButton(text: "Sign Up"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("have a account? ", style: MyTextStyles.normalStyle),
              Text("Sign In", style: MyTextStyles.singleBoldStyle).onT(),
            ],
          ).sp(v: 24),
        ],
      ).sp(h: 16),
    );
  }
}
