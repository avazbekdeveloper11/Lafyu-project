import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portifolio/core/components/my_containers.dart';
import 'package:portifolio/core/components/my_decoration.dart';
import 'package:portifolio/core/constant/constant.dart';
import 'package:portifolio/core/constant/size_config.dart';
import 'package:portifolio/core/constant/text_styles.dart';
import 'package:portifolio/core/extensions/extensions.dart';
import 'package:portifolio/core/widgets/app_bar_widget.dart';
import 'package:portifolio/core/widgets/my_category_widget.dart';
import 'package:portifolio/core/widgets/page_indecator.dart';
import 'package:portifolio/screens/home_page/components/componts.dart';

class HomePageView extends StatelessWidget {
  HomePageView({Key? key}) : super(key: key);
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      // APPBAR
      appBar: MyAppBar(
        firstIcon: Constant.notificationIcon,
        lastIcon: Constant.favoriteIcon,
      ).build(context),

      // BODY
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getH(238),
              width: double.infinity,
              child: PageView.builder(
                controller: _pageController,
                itemBuilder: (_, __) {
                  return MyCont.pageContainer(img: Constant.randomImage);
                },
                itemCount: 5,
              ),
            ),
            pageViewIndecator(pageController: _pageController),
            MycategoryWidget(
              category: "Category",
              txButton: "More Category",
            ).sp(h: 16, v: 15),

            // Category Builder
            HomepageComponents.categoryBuilder(),

            // Flash Sale Banner
            MycategoryWidget(category: "Flash Sale").sp(h: 16, v: 15),

            // Flash Sale Builder
            SizedBox(
              height: getH(300),
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, __) {
                  return Container(
                    width: getW(165),
                    decoration: MyDeco.withGoogleButtonDeco(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: getH(133),
                          width: getH(133),
                          decoration: MyDeco.withImageDeco(
                            img: Constant.randomImage,
                          ),
                        ).op(t: 16, b: 8),
                        Text(
                          "FS - Nike Air Max 270 React...",
                          style: MyTextStyles.boldStyleMini,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(Constant.starYellowIcon),
                            SvgPicture.asset(Constant.starYellowIcon),
                            SvgPicture.asset(Constant.starYellowIcon),
                            SvgPicture.asset(Constant.starYellowIcon),
                            SvgPicture.asset(Constant.starYellowIcon),
                          ],
                        ).op(t: 4),
                        SizedBox(
                          width: getW(133),
                          height: getH(52),
                          child: Text(
                            "\$299,43",
                            style: MyTextStyles.boldStyledarkMini,
                          ).op(t: 16),
                        ),
                        Row(
                          children: [
                            Text("\$534,33", style: MyTextStyles.normalStyle),
                            const Text("  "),
                            Text("24% Off", style: MyTextStyles.normalRedStyle),
                          ],
                        ),
                      ],
                    ).sp(h: 16),
                  ).op(l: 16);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
