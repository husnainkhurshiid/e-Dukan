import 'package:shoppingmart/const/consts.dart';

Widget CustomTextField(
    {String? title, String? hint, obsecuretext, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(redColor).fontFamily(bold).size(16).make(),
      5.heightBox,
      TextFormField(
        obscureText: obsecuretext,
        controller: controller,
        decoration: InputDecoration(
            hintStyle: const TextStyle(
              fontFamily: semibold,
              color: textfieldGrey,
            ),
            hintText: hint,
            isDense: true,
            fillColor: lightGrey,
            filled: true,
            border: InputBorder.none,
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: redColor),
            )),
      ),
      10.heightBox,
    ],
  );
}
