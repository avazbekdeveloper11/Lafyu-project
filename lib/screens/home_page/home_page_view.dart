import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portifolio/core/components/my_containers.dart';
import 'package:portifolio/core/constant/constant.dart';
import 'package:portifolio/core/constant/size_config.dart';
import 'package:portifolio/core/extensions/extensions.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 1,
        title: MyCont.searchContainer(),
        actions: [
          SvgPicture.asset(Constant.notificationIcon),
          SvgPicture.asset(Constant.favoriteIcon).sp(h: 18)
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: getH(238),
            child: PageView.builder(
              itemCount: 3,
              itemBuilder: (_, __) {
                return Container(
                  height: getH(206),
                  width: getW(343),
                  margin: EdgeInsets.symmetric(
                      horizontal: getW(16), vertical: getH(16)),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(5),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
