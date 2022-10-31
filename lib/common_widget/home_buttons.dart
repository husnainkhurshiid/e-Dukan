import 'package:shoppingmart/const/consts.dart';

Widget HomeButtons({height, width, String? title, icon, onpress}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(icon, width: 30),
      10.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.rounded.white.size(width, height).shadowSm.make();
}
