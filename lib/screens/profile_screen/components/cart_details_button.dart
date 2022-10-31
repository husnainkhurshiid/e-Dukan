import 'package:shoppingmart/const/consts.dart';

Widget CartDetailsButton({width, String? title, String? count}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!.text.fontFamily(bold).size(16).color(darkFontGrey).make(),
      5.heightBox,
      title!.text.color(darkFontGrey).make(),
    ],
  )
      .box
      .white
      .width(width)
      .height(60)
      .padding(const EdgeInsets.all(4))
      .rounded
      .make();
}
