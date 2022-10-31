import 'dart:math';

import 'package:shoppingmart/common_widget/feature_button.dart';
import 'package:shoppingmart/common_widget/home_buttons.dart';
import 'package:shoppingmart/const/List.dart';
import 'package:shoppingmart/const/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        color: lightGrey,
        width: context.screenWidth,
        height: context.screenHeight,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 60,
                color: lightGrey,
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.search,
                      color: fontGrey,
                    ),
                    filled: true,
                    fillColor: whiteColor,
                    hintText: " Search here",
                    hintStyle: TextStyle(color: textfieldGrey),
                  ),
                ),
              ),
              10.heightBox,
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      VxSwiper.builder(
                          aspectRatio: 16 / 9,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          height: 150,
                          itemCount: slidersList.length,
                          itemBuilder: (context, index) {
                            return Image.asset(
                              slidersList[index],
                              fit: BoxFit.fill,
                            )
                                .box
                                .rounded
                                .clip(Clip.antiAlias)
                                .margin(
                                    const EdgeInsets.symmetric(horizontal: 8))
                                .make();
                          }),
                      10.heightBox,
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List.generate(
                              2,
                              (index) => HomeButtons(
                                    height: context.screenHeight * 0.15,
                                    width: context.screenWidth / 2.5,
                                    icon:
                                        index == 0 ? icTodaysDeal : icFlashDeal,
                                    title: index == 0
                                        ? "Today's Deal"
                                        : 'Flash Sale',
                                  ))),
                      10.heightBox,
                      VxSwiper.builder(
                          aspectRatio: 16 / 9,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          height: 150,
                          itemCount: secondSlidersList.length,
                          itemBuilder: (context, index) {
                            return Image.asset(
                              secondSlidersList[index],
                              fit: BoxFit.fill,
                            )
                                .box
                                .rounded
                                .clip(Clip.antiAlias)
                                .margin(EdgeInsets.symmetric(horizontal: 8))
                                .make();
                          }),
                      10.heightBox,
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List.generate(
                              3,
                              (index) => HomeButtons(
                                    height: context.screenHeight * 0.15,
                                    width: context.screenWidth / 3.5,
                                    icon: index == 0
                                        ? icTopCategories
                                        : index == 1
                                            ? icBrands
                                            : icTopSeller,
                                    title: index == 0
                                        ? 'Top Categories'
                                        : index == 1
                                            ? "Brands"
                                            : 'Top Sellars',
                                  ))),
                      10.heightBox,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: "Featured Categories"
                            .text
                            .color(darkFontGrey)
                            .fontFamily(bold)
                            .size(18)
                            .make(),
                      ),
                      10.heightBox,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                              3,
                              (index) => Column(
                                    children: [
                                      FeaturedButton(
                                          title: featuredTitlesUpper[index],
                                          icon: featuredImgUpper[index]),
                                      10.heightBox,
                                      FeaturedButton(
                                          title: featuredTitlesLower[index],
                                          icon: featuredImgLower[index]),
                                    ],
                                  )),
                        ),
                      ),
                      10.heightBox,
                      Container(
                        padding: const EdgeInsets.all(12),
                        width: double.infinity,
                        decoration: const BoxDecoration(color: redColor),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Featured Products"
                                .text
                                .color(whiteColor)
                                .fontFamily(bold)
                                .size(18)
                                .make(),
                            10.heightBox,
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                    6,
                                    (index) => Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(imgP1, width: 150),
                                            10.heightBox,
                                            'Laptop 4/64'
                                                .text
                                                .fontFamily(bold)
                                                .color(darkFontGrey)
                                                .size(16)
                                                .make(),
                                            10.heightBox,
                                            '\$ 499'
                                                .text
                                                .fontFamily(bold)
                                                .color(darkFontGrey)
                                                .size(16)
                                                .make()
                                          ],
                                        )
                                            .box
                                            .white
                                            .padding(const EdgeInsets.all(12))
                                            .margin(const EdgeInsets.symmetric(
                                                horizontal: 6))
                                            .roundedSM
                                            .make()),
                              ),
                            ),
                          ],
                        ),
                      ),
                      10.heightBox,
                      VxSwiper.builder(
                          aspectRatio: 16 / 9,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          height: 150,
                          itemCount: secondSlidersList.length,
                          itemBuilder: (context, index) {
                            return Image.asset(
                              secondSlidersList[index],
                              fit: BoxFit.fill,
                            )
                                .box
                                .rounded
                                .clip(Clip.antiAlias)
                                .margin(EdgeInsets.symmetric(horizontal: 8))
                                .make();
                          }),
                      10.heightBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          'All Products'
                              .text
                              .fontFamily(bold)
                              .color(darkFontGrey)
                              .size(18)
                              .make(),
                          10.heightBox,
                          GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 6,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 8,
                                      crossAxisSpacing: 8,
                                      mainAxisExtent: 300),
                              itemBuilder: ((context, index) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      imgP3,
                                      width: 200,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                    const Spacer(),
                                    10.heightBox,
                                    'Laptop 4/64'
                                        .text
                                        .fontFamily(bold)
                                        .color(darkFontGrey)
                                        .size(16)
                                        .make(),
                                    10.heightBox,
                                    '\$ 499'
                                        .text
                                        .fontFamily(bold)
                                        .color(redColor)
                                        .size(16)
                                        .make()
                                  ],
                                )
                                    .box
                                    .white
                                    .roundedSM
                                    .padding(EdgeInsets.all(12))
                                    .make();
                              })),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
