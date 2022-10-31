import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'package:shoppingmart/const/consts.dart';
import 'package:shoppingmart/controller/home_controller.dart';
import 'package:shoppingmart/screens/cart_screen/cart_screen.dart';
import 'package:shoppingmart/screens/category_screen/category_screen.dart';
import 'package:shoppingmart/screens/home_screen/home_screen.dart';
import 'package:shoppingmart/screens/profile_screen/profile_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: 'Home'),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: 'Categories'),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: 'Cart'),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: 'Profile'),
    ];

    var navBody = [
      HomeScreen(),
      CategoryScreen(),
      CartScreen(),
      ProfileScreen()
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
                child: navBody.elementAt(controller.currentValueIndex.value)),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentValueIndex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: TextStyle(fontFamily: bold),
          items: navbarItem,
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            controller.currentValueIndex.value = value;
          },
        ),
      ),
    );
  }
}
