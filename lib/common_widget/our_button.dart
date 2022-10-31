import 'package:shoppingmart/const/consts.dart';

Widget ourButton({onPress, color, textColor, String? title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: redColor,
      padding: const EdgeInsets.all(12),
    ),
    onPressed: onPress,
    child: title?.text.color(textColor).size(16).fontFamily(bold).make(),
  );
}
