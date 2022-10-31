import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_launcher_icons/constants.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shoppingmart/common_widget/app_logo_widget.dart';
import 'package:shoppingmart/common_widget/bg_widget.dart';
import 'package:shoppingmart/common_widget/our_button.dart';
import 'package:shoppingmart/common_widget/custom_textfield.dart';
import 'package:shoppingmart/const/consts.dart';
import 'package:shoppingmart/const/List.dart';
import 'package:shoppingmart/controller/auth_controller.dart';
import 'package:shoppingmart/screens/auth_screen/signup_screen.dart';
import 'package:shoppingmart/screens/home/home.dart';
import 'package:shoppingmart/screens/home_screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var auth_controller = Get.put(AuthController());
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Column(children: [
              (context.screenHeight * 0.1).heightBox,
              applogoWidget(),
              10.heightBox,
              "Log in to $appname".text.white.fontFamily(bold).make(),
              20.heightBox,
              Obx(
                () => Column(children: [
                  CustomTextField(
                      title: email,
                      hint: emailHint,
                      obsecuretext: false,
                      controller: emailController),
                  CustomTextField(
                      title: password,
                      hint: passwordHint,
                      obsecuretext: true,
                      controller: passwordController),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {}, child: forgetPass.text.make())),
                  10.heightBox,
                  createNewAccount.text.color(fontGrey).make(),
                  10.heightBox,
                  auth_controller.isloading.value
                      ? const CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(redColor),
                        )
                      : ourButton(
                          title: login,
                          color: redColor,
                          textColor: whiteColor,
                          onPress: () async {
                            auth_controller.isloading(true);
                            await auth_controller
                                .loginMethod(
                              email: emailController.text,
                              password: passwordController.text,
                              context: context,
                            )
                                .then((value) {
                              if (value != null) {
                                VxToast.show(context,
                                    msg: 'Logged In Sucessfully');
                                Get.offAll(() => Home());
                                auth_controller.isloading(false);
                              } else {
                                auth_controller.isloading(false);
                              }
                            });
                          }).box.width(context.screenWidth - 50).make(),
                  10.heightBox,
                  ourButton(
                      title: signup,
                      color: lightGolden,
                      textColor: whiteColor,
                      onPress: () {
                        Get.to(() => SignUp());
                      }).box.width(context.screenWidth - 50).make(),
                  15.heightBox,
                  loginWith.text.make(),
                  15.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => CircleAvatar(
                              backgroundColor: lightGrey,
                              radius: 25,
                              child: Image.asset(
                                SocialIconsList[index],
                                width: 30,
                              ),
                            )),
                  ),
                ])
                    .box
                    .white
                    .rounded
                    .padding(const EdgeInsets.all(16))
                    .width(context.screenWidth - 60)
                    .shadowSm
                    .make(),
              ),
            ]),
          )),
    );
  }
}
