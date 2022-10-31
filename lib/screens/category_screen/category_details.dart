import 'package:get/get.dart';
import 'package:shoppingmart/common_widget/bg_widget.dart';
import 'package:shoppingmart/const/List.dart';
import 'package:shoppingmart/const/consts.dart';
import 'package:shoppingmart/screens/category_screen/product_details.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    6,
                    (index) => categoryList[index]
                        .text
                        .size(12)
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .align(TextAlign.center)
                        .makeCentered()
                        .box
                        .white
                        .size(120, 60)
                        .rounded
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .make()),
              ),
            ),
            10.heightBox,
            Expanded(
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      mainAxisExtent: 300),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(imgP1, width: 200, height: 150),
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
                            .size(18)
                            .make()
                      ],
                    )
                        .onTap(() {
                          Get.to(
                              () => ProductDetail(title: categoryList[index]));
                        })
                        .box
                        .white
                        .padding(const EdgeInsets.all(12))
                        .roundedSM
                        .outerShadow
                        .make();
                  }),
            )
          ],
        ),
      ),
    ));
  }
}
