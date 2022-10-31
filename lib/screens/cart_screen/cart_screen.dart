import 'package:shoppingmart/const/consts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        color: whiteColor,
        child: "Cart is empty\n Nothing's here to show"
            .text
            .color(darkFontGrey)
            .size(16)
            .fontFamily(semibold)
            .makeCentered(),
      ),
    );
  }
}
