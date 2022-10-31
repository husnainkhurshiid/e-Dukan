import 'package:shoppingmart/const/consts.dart';

Widget FeaturedButton({String? title, icon}) {
  return Row(
    children: [
      Image.asset(
        icon,
        width: 60,
        fit: BoxFit.fill,
      ),
      10.widthBox,
      title!.text.color(fontGrey).maxLines(2).fontFamily(bold).make(),
    ],
  )
      .box
      .white
      .rounded
      .margin(const EdgeInsets.symmetric(horizontal: 4))
      .padding(const EdgeInsets.all(8))
      .width(185)
      .outerShadowSm
      .make();
}
