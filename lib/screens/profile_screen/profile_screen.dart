import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:shoppingmart/common_widget/bg_widget.dart';
import 'package:shoppingmart/const/List.dart';
import 'package:shoppingmart/const/consts.dart';
import 'package:shoppingmart/controller/auth_controller.dart';
import 'package:shoppingmart/controller/profile_controller.dart';
import 'package:shoppingmart/screens/auth_screen/login_screen.dart';
import 'package:shoppingmart/screens/profile_screen/edit_profile_screen.dart';
import 'package:shoppingmart/services/firestore_services.dart';

import 'components/cart_details_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileController());

    // stream: FirestoreServices.getUser(currentUser!.uid),
    // builder: (BuildContext context,
    //     AsyncSnapshot<QuerySnapshot> snapshot) {
    //   if (!snapshot.hasData) {
    //     return const Center(
    //       child: CircularProgressIndicator(
    //         valueColor: AlwaysStoppedAnimation(redColor),
    //       ),
    //     );
    //   } else {
    //     var data = snapshot.data!.docs[0];

    //     return
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.edit,
                  color: whiteColor,
                )).onTap(() {
              // controller.nameController.text = data['name'];
              // controller.passwordController.text = data['password'];
              // data['password'];
              Get.to(() => EditProfileScreen());
            }),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  // data['imageUrl'] == ''
                  //     ? CircleAvatar(
                  //         child: Icon(
                  //           Icons.person,
                  //           color: whiteColor,
                  //           size: 90,
                  //         ),
                  //         backgroundColor: redColor,
                  //         radius: 50,
                  //       )
                  //         .box
                  //         .roundedFull
                  //         .clip(Clip.antiAlias)
                  //         .make()
                  //     : Image.network(data['imageUrl'],
                  //         width: 100, fit: BoxFit.cover),
                  CircleAvatar(
                    child: Icon(
                      Icons.person,
                      color: whiteColor,
                      size: 90,
                    ),
                    backgroundColor: redColor,
                    radius: 50,
                  ).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.widthBox,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Demo User"
                          .text
                          .size(16)
                          .color(whiteColor)
                          .fontFamily(semibold)
                          .make(),
                      5.heightBox,
                      "demo@gmail.com".text.color(whiteColor).make(),
                    ],
                  )),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: whiteColor)),
                    child: 'Log out'.text.color(whiteColor).make(),
                    onPressed: () {
                      FirebaseAuth.instance.signOut().then((value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      });
                    },
                  ),
                ],
              ),
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CartDetailsButton(
                    title: 'In your cart',
                    count: "00",
                    width: context.screenWidth / 3.4),
                CartDetailsButton(
                    title: "00", count: '25', width: context.screenWidth / 3.4),
                CartDetailsButton(
                    title: "00}",
                    count: '12',
                    width: context.screenWidth / 3.4),
              ],
            ),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return const Divider(
                  color: lightGrey,
                  thickness: 2,
                );
              },
              itemCount: ProfileButtonList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: ProfileButtonList[index]
                      .text
                      .fontFamily(semibold)
                      .color(darkFontGrey)
                      .make(),
                  leading: Image.asset(
                    ProfileButtonIcons[index],
                    width: 22,
                  ),
                );
              },
            )
                .box
                .white
                .rounded
                .shadowSm
                .margin(const EdgeInsets.all(12))
                .padding(const EdgeInsets.symmetric(horizontal: 16))
                .make()
                .box
                .color(redColor)
                .make(),
          ],
        ),
      ),
    ));
  }
}
