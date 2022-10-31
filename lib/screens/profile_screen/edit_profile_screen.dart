import 'dart:io';

import 'package:get/get.dart';
import 'package:shoppingmart/common_widget/bg_widget.dart';
import 'package:shoppingmart/common_widget/custom_textfield.dart';
import 'package:shoppingmart/common_widget/our_button.dart';
import 'package:shoppingmart/const/consts.dart';
import 'package:shoppingmart/controller/profile_controller.dart';

class EditProfileScreen extends StatelessWidget {
  final dynamic data;
  const EditProfileScreen({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    var imageController = Get.find<ProfileController>();

    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Obx(
        () => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // data['imageUrl'] && imageController.profileImgPath.isEmpty
            //     ?
            CircleAvatar(
              child: Icon(
                Icons.person,
                color: whiteColor,
                size: 90,
              ),
              backgroundColor: redColor,
              radius: 50,
            ).box.roundedFull.clip(Clip.antiAlias).make(),
            // : data['imageUrl'] != '' &&
            //         imageController.profileImageLink.isEmpty
            //     ? Image.network(
            //         data['imageUrl'],
            //         width: 100,
            //         fit: BoxFit.cover,
            //       ).box.roundedFull.clip(Clip.antiAlias).make()
            //     : Image.file(File(imageController.profileImgPath.value),
            //             width: 100, fit: BoxFit.cover)
            //         .box
            //         .roundedFull
            //         .clip(Clip.antiAlias)
            //         .make(),
            10.heightBox,
            ourButton(onPress: () {}, textColor: whiteColor, title: 'Change'),
            Divider(),
            20.heightBox,
            CustomTextField(
              controller: imageController.nameController,
              hint: nameHint,
              title: name,
              obsecuretext: false,
            ),
            CustomTextField(
              controller: imageController.passwordController,
              hint: passwordHint,
              title: password,
              obsecuretext: false,
            ),
            20.heightBox,
            imageController.isloading.value
                ? const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(redColor),
                  )
                : SizedBox(
                    width: context.screenWidth - 60,
                    child: ourButton(
                        color: redColor,
                        onPress: () async {
                          imageController.isloading(true);
                          await imageController.uploadProfileImage();
                          await imageController.updateProfile(
                              name: imageController.nameController.text,
                              password: imageController.passwordController.text,
                              imageUrl: imageController.profileImageLink);
                          VxToast.show(context, msg: 'Profile Updates');
                        },
                        textColor: whiteColor,
                        title: 'Save'),
                  ),
          ],
        )
            .box
            .white
            .shadowSm
            .padding(const EdgeInsets.all(16))
            .margin(const EdgeInsets.only(top: 50, right: 12, left: 12))
            .rounded
            .make(),
      ),
    ));
  }
}
