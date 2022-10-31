import 'package:get/get.dart';
import 'package:shoppingmart/common_widget/our_button.dart';
import 'package:shoppingmart/const/List.dart';
import 'package:shoppingmart/const/consts.dart';

class ProductDetail extends StatelessWidget {
  final String? title;
  const ProductDetail({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).make(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
              )),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VxSwiper.builder(
                      autoPlay: true,
                      height: 300,
                      aspectRatio: 16 / 9,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          imgFc5,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      }),
                  10.heightBox,
                  title!.text
                      .size(16)
                      .color(darkFontGrey)
                      .fontFamily(semibold)
                      .make(),
                  10.heightBox,
                  VxRating(
                    onRatingUpdate: (Value) {},
                    count: 5,
                    normalColor: textfieldGrey,
                    selectionColor: golden,
                    size: 25,
                    stepInt: true,
                  ),
                  10.heightBox,
                  '\$ 1899'
                      .text
                      .size(18)
                      .color(redColor)
                      .fontFamily(bold)
                      .make(),
                  10.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Sellar"
                                .text
                                .size(15)
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .make(),
                            5.heightBox,
                            "In House Brands"
                                .text
                                .size(18)
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .make(),
                          ],
                        ),
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.message_rounded,
                          color: darkFontGrey,
                        ),
                      )
                    ],
                  )
                      .box
                      .height(70)
                      .padding(const EdgeInsets.all(10))
                      .color(textfieldGrey)
                      .make(),
                  20.heightBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Color "
                                .text
                                .color(fontGrey)
                                .fontFamily(semibold)
                                .make(),
                          ),
                          Row(
                            children: List.generate(
                                3,
                                (index) => VxBox()
                                    .size(40, 40)
                                    .roundedFull
                                    .color(Vx.randomPrimaryColor)
                                    .margin(const EdgeInsets.symmetric(
                                        horizontal: 6))
                                    .make()),
                          ),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Quantity "
                                .text
                                .color(fontGrey)
                                .fontFamily(semibold)
                                .make(),
                          ),
                          Row(children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.remove)),
                            '0'
                                .text
                                .color(darkFontGrey)
                                .fontFamily(semibold)
                                .size(16)
                                .make(),
                            IconButton(
                                onPressed: () {}, icon: const Icon(Icons.add)),
                            '(0 avaible)'
                                .text
                                .color(darkFontGrey)
                                .size(16)
                                .make(),
                          ]),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Total "
                                .text
                                .color(fontGrey)
                                .fontFamily(semibold)
                                .make(),
                          ),
                          Row(
                            children: [
                              '\$ 0.00'
                                  .text
                                  .size(16)
                                  .color(redColor)
                                  .fontFamily(bold)
                                  .make(),
                            ],
                          ),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                      10.heightBox,
                      'Description'
                          .text
                          .color(darkFontGrey)
                          .size(16)
                          .fontFamily(bold)
                          .make(),
                      10.heightBox,
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                          .text
                          .color(darkFontGrey)
                          .size(14)
                          .make(),
                      5.heightBox,
                      ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: List.generate(
                            ProductDetailButtonList.length,
                            (index) => ListTile(
                                  title: ProductDetailButtonList[index]
                                      .text
                                      .fontFamily(semibold)
                                      .make(),
                                  trailing: const Icon(Icons.arrow_forward),
                                )),
                      ),
                      10.heightBox,
                      "Product's you may also like"
                          .text
                          .size(16)
                          .fontFamily(bold)
                          .color(darkFontGrey)
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
                ],
              ),
            ),
          )),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ourButton(
                color: redColor,
                onPress: () {},
                textColor: whiteColor,
                title: 'Add to cart'),
          ),
        ],
      ),
    );
  }
}
