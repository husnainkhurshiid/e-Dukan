// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/get_navigation.dart';
// import 'package:shoppingmart/common_widget/app_logo_widget.dart';
// import 'package:shoppingmart/common_widget/bg_widget.dart';
// import 'package:shoppingmart/common_widget/custom_textfield.dart';
// import 'package:shoppingmart/common_widget/our_button.dart';
// import 'package:shoppingmart/const/consts.dart';
// import 'package:shoppingmart/const/List.dart';
// import 'package:shoppingmart/controller/auth_controller.dart';
// import 'package:shoppingmart/screens/auth_screen/login_screen.dart';
// import 'package:shoppingmart/screens/home/home.dart';
// import 'package:status_alert/status_alert.dart';

// class SignUp extends StatefulWidget {
//   const SignUp({super.key});

//   @override
//   State<SignUp> createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   bool isCheck = false;
//   var controller = Get.put(AuthController());

//   //text controllers
//   TextEditingController nameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController confirmPasswordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return bgWidget(
//         child: Scaffold(
//             resizeToAvoidBottomInset: false,
//             body: Center(
//               child: Column(
//                 children: [
//                   (context.screenHeight * 0.1).heightBox,
//                   applogoWidget(),
//                   10.heightBox,
//                   "Signup to $appname".text.white.fontFamily(bold).make(),
//                   20.heightBox,
//                   Column(
//                     children: [
//                       CustomTextField(
//                           obsecuretext: false,
//                           title: name,
//                           hint: nameHint,
//                           controller: nameController),
//                       CustomTextField(
//                           obsecuretext: false,
//                           title: email,
//                           hint: emailHint,
//                           controller: emailController),
//                       CustomTextField(
//                           obsecuretext: true,
//                           title: password,
//                           hint: passwordHint,
//                           controller: passwordController),
//                       CustomTextField(
//                           obsecuretext: true,
//                           title: confirmPassword,
//                           hint: passwordHint,
//                           controller: confirmPasswordController),
//                       Align(
//                           alignment: Alignment.centerRight,
//                           child: TextButton(
//                               onPressed: () {},
//                               child: forgetPass.text.size(15).make())),
//                       5.heightBox,
//                       Row(
//                         children: [
//                           Checkbox(
//                             activeColor: redColor,
//                             checkColor: whiteColor,
//                             value: isCheck,
//                             onChanged: (newValue) {
//                               setState(() {
//                                 isCheck = newValue!;
//                               });
//                             },
//                           ),
//                           5.widthBox,
//                           Expanded(
//                             child: RichText(
//                                 text: const TextSpan(children: [
//                               TextSpan(
//                                   text: "I agree to the ",
//                                   style: TextStyle(
//                                       color: fontGrey, fontFamily: regular)),
//                               TextSpan(
//                                   text: termsandCondition,
//                                   style: TextStyle(
//                                       color: redColor, fontFamily: regular)),
//                               TextSpan(
//                                   text: " & ",
//                                   style: TextStyle(
//                                       color: fontGrey, fontFamily: regular)),
//                               TextSpan(
//                                   text: privacyPolicy,
//                                   style: TextStyle(
//                                       color: redColor, fontFamily: regular)),
//                             ])),
//                           ),
//                         ],
//                       ),
//                       ourButton(
//                           title: signup,
//                           color: redColor,
//                           textColor: whiteColor,
//                           onPress: () async {
//                             if (passwordController.text ==
//                                 confirmPasswordController.text) {
//                               if (isCheck != false) {
//                                 try {
//                                   await controller
//                                       .signupMethod(
//                                     context: context,
//                                     email: emailController.text,
//                                     password: passwordController.text,
//                                   )
//                                       .then((value) {
//                                     return controller
//                                         .storeUserData(
//                                             name: nameController.text,
//                                             email: emailController.text,
//                                             password: passwordController.text)
//                                         .then((value) {
//                                       VxToast.show(context,
//                                           msg: 'Account Created Sucessfully');
//                                       Get.offAll(LoginScreen());
//                                     });
//                                   });
//                                 } catch (e) {
//                                   // StatusAlert.show(context,
//                                   //     duration: const Duration(seconds: 2),
//                                   //     backgroundColor: lightGrey,
//                                   //     title: 'Warning',
//                                   //     subtitle:
//                                   //         "Please accept Terms and Conditions to continue",
//                                   //     configuration: const IconConfiguration(
//                                   //         icon: Icons.warning_rounded,
//                                   //         color: Colors.red),
//                                   //     borderRadius:
//                                   //         BorderRadius.all(Radius.circular(20)));
//                                   print(e.toString());
//                                   VxToast.show(context, msg: e.toString());
//                                   FirebaseAuth.instance.signOut();
//                                 }
//                               }
//                             } else {
//                               VxToast.show(context,
//                                   msg: 'Confirm password should be same');
//                             }
//                           }).box.width(context.screenWidth - 50).make(),
//                       5.heightBox,
//                       RichText(
//                           text: const TextSpan(children: [
//                         TextSpan(
//                             text: alreadyhaveanAccount,
//                             style: TextStyle(color: fontGrey)),
//                         TextSpan(
//                             text: login,
//                             style:
//                                 TextStyle(color: redColor, fontFamily: bold)),
//                       ])).onTap(() {
//                         Get.back();
//                       })
//                     ],
//                   )
//                       .box
//                       .white
//                       .rounded
//                       .padding(const EdgeInsets.all(16))
//                       .width(context.screenWidth - 60)
//                       .shadowSm
//                       .make(),
//                 ],
//               ),
//             )));
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shoppingmart/common_widget/app_logo_widget.dart';
import 'package:shoppingmart/common_widget/bg_widget.dart';
import 'package:shoppingmart/common_widget/custom_textfield.dart';
import 'package:shoppingmart/common_widget/our_button.dart';
import 'package:shoppingmart/const/consts.dart';
import 'package:shoppingmart/const/List.dart';
import 'package:shoppingmart/controller/auth_controller.dart';
import 'package:shoppingmart/screens/auth_screen/login_screen.dart';
import 'package:shoppingmart/screens/home/home.dart';
import 'package:status_alert/status_alert.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isCheck = false;
  var auth_controller = Get.put(AuthController());

  //text controllers
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

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
          "Signup to $appname".text.white.fontFamily(bold).make(),
          20.heightBox,
          Obx(
            () => Column(
              children: [
                CustomTextField(
                  controller: nameController,
                  hint: nameHint,
                  obsecuretext: false,
                  title: name,
                ),
                CustomTextField(
                  controller: emailController,
                  hint: emailHint,
                  obsecuretext: false,
                  title: email,
                ),
                CustomTextField(
                  controller: passwordController,
                  hint: passwordHint,
                  obsecuretext: true,
                  title: password,
                ),
                CustomTextField(
                  controller: confirmPasswordController,
                  hint: passwordHint,
                  obsecuretext: true,
                  title: confirmPassword,
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {},
                        child: forgetPass.text.size(15).make())),
                5.heightBox,
                // Row(
                //   children: [
                //     Checkbox(
                //       activeColor: redColor,
                //       checkColor: whiteColor,
                //       value: isCheck,
                //       onChanged: (newValue) {
                //         setState(() {
                //           isCheck = newValue!;
                //         });
                //       },
                //     ),
                //     5.widthBox,
                // Expanded(
                //   child: RichText(
                //       text: const TextSpan(children: [
                //     TextSpan(
                //         text: "I agree to the ",
                //         style: TextStyle(
                //             color: fontGrey, fontFamily: regular)),
                //     TextSpan(
                //         text: termsandCondition,
                //         style: TextStyle(
                //             color: redColor, fontFamily: regular)),
                //     TextSpan(
                //         text: " & ",
                //         style: TextStyle(
                //             color: fontGrey, fontFamily: regular)),
                //     TextSpan(
                //         text: privacyPolicy,
                //         style: TextStyle(
                //             color: redColor, fontFamily: regular)),
                //   ])),
                // ),
                //   ],
                // ),
                auth_controller.loading.value
                    ? CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(redColor))
                    : ourButton(
                        title: signup,
                        color: redColor,
                        textColor: whiteColor,
                        onPress: () async {
                          await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: emailController.text,
                                  password: passwordController.text)
                              //     .then((value) async {
                              //   await auth_controller.storeUserData(
                              //       name: nameController.text,
                              //       password: passwordController.text,
                              //       email: emailController.text);
                              // })
                              .then((value) {
                            VxToast.show(context,
                                msg: "Account Created ", showTime: 10000);
                            Get.offAll(() => LoginScreen());
                          }).then((value) {
                            auth_controller.storeUserData(
                                name: nameController.text,
                                password: passwordController.text,
                                email: emailController.text);
                          });

                          // }
                        }).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: alreadyhaveanAccount,
                      style: TextStyle(color: fontGrey)),
                  TextSpan(
                      text: login,
                      style: TextStyle(color: redColor, fontFamily: bold)),
                ])).onTap(() {
                  Get.back();
                })
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 60)
                .shadowSm
                .make(),
          ),
        ]),
      ),
    ));
  }
}
