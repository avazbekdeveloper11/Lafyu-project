import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portifolio/core/components/my_containers.dart';
import 'package:portifolio/core/components/my_decoration.dart';
import 'package:portifolio/core/constant/constant.dart';
import 'package:portifolio/core/constant/size_config.dart';
import 'package:portifolio/core/constant/text_styles.dart';
import 'package:portifolio/core/extensions/extensions.dart';
import 'package:portifolio/core/widgets/app_bar_widget.dart';
import 'package:portifolio/core/widgets/my_cards.dart';
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
            MycategoryWidget(category: "Category", txButton: "More Category")
                .sp(h: 16, v: 15),

            // Category Builder
            HomepageComponents.categoryBuilder(),

            // Flash Sale Banner
            MycategoryWidget(category: "Flash Sale").sp(h: 16, v: 15),

            // Flash Sale Builder
            SizedBox(
              height: getH(295),
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, __) {
                  return MyCard.cardShop().op(l: 16);
                },
              ),
            ),

            // Flash Sale Banner
            MycategoryWidget(category: "Mega Sale").sp(h: 16, v: 18),

            // Mega Sale Builder
            SizedBox(
              height: getH(295),
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, __) {
                  return MyCard.cardShop().op(l: 16);
                },
              ),
            ),
            Container(
              height: getH(206),
              width: getW(343),
              decoration: MyDeco.containerDeco(),
            ).op(t: 8, b: 16),
            SizedBox(
              height: getH(612),
              width: double.infinity,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: getH(295),
                ),
                itemBuilder: (_, __) {
                  return MyCard.cardShop();
                },
              ),
            ).sp(h: 16),
          ],
        ),
      ),
    );
  }
}
