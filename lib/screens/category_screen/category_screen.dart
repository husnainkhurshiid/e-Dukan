import 'package:get/get.dart';
import 'package:shoppingmart/common_widget/bg_widget.dart';
import 'package:shoppingmart/const/List.dart';
import 'package:shoppingmart/const/consts.dart';
import 'package:shoppingmart/screens/category_screen/category_details.dart';
import 'package:shoppingmart/screens/home/home.dart';
import 'package:shoppingmart/screens/home_screen/home_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: "Categories".text.fontFamily(bold).make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                mainAxisExtent: 200),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  10.heightBox,
                  Image.asset(
                    categoryIcon[index],
                    width: 200,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                  20.heightBox,
                  categoryList[index]
                      .text
                      .align(TextAlign.center)
                      .fontFamily(bold)
                      .make(),
                ],
              )
                  .onTap(() {
                    Get.to(() => CategoryDetails(title: categoryList[index]));
                  })
                  .box
                  .white
                  .rounded
                  .outerShadow
                  .make();
            }),
      ),
    ));
  }
}
