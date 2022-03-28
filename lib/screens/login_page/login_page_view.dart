import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portifolio/core/components/my_buttons.dart';
import 'package:portifolio/core/components/my_decoration.dart';
import 'package:portifolio/core/constant/constant.dart';
import 'package:portifolio/core/constant/size_config.dart';
import 'package:portifolio/core/constant/text_styles.dart';
import 'package:portifolio/core/extensions/extensions.dart';

class LoginPageView extends StatelessWidget {
  LoginPageView({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return scaffoldLogin();
  }

  Scaffold scaffoldLogin() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
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
                controller: _emailController,
                decoration: MyDeco.forumDeco(
                  hintText: "Your Email",
                  perfixIcon: Constant.emailIcon,
                ),
                validator: (v) => !RegExp(Constant.emailValidate).hasMatch(v!)
                    ? "Your Email Is Not Correct "
                    : null,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: MyDeco.forumDeco(
                  hintText: "Your Password",
                  perfixIcon: Constant.passwordIcon,
                ),
                validator: (v) => !RegExp(Constant.emailValidate).hasMatch(v!)
                    ? "Oops! Your Password Is Not Correct"
                    : null,
              ).op(t: 8, b: 16),
              MyButtons.myBlueButton(text: "Sign In"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Constant.myDivider(),
                  Text("OR", style: MyTextStyles.orTextStyle),
                  Constant.myDivider(),
                ],
              ).op(t: 21, b: 16),
              MyButtons.withSignButton(
                text: "Login with Google",
                image: "assets/svg/google_icon.svg",
              ),
              MyButtons.withSignButton(
                text: "Login with facebook",
                image: "assets/svg/facebook_icon.svg",
              ).op(t: 8),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Text(
                  "Forgot Password?",
                  style: MyTextStyles.singleBoldStyle,
                ),
                onTap: () {},
              ).op(t: 16, b: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have a account? ",
                    style: MyTextStyles.normalStyle,
                  ),
                  Text(
                    "Register",
                    style: MyTextStyles.singleBoldStyle,
                  ).onT(
                    ontap: () => _formKey.currentState!.validate()
                        ? print("OKAY")
                        : null,
                  ),
                ],
              ).op(b: 50),
            ],
          ).sp(h: 16),
        ),
      ),
    );
  }
}
