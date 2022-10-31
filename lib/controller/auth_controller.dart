import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shoppingmart/const/consts.dart';

class AuthController extends GetxController {
  var isloading = false.obs;
  var loading = false.obs;

  // var emailController = TextEditingController();
  // var passwordController = TextEditingController();
  //login method

  Future<UserCredential?> loginMethod({email, password, context}) async {
    UserCredential? userCredential;
    try {
      userCredential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      print(userCredential);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }

  //signup method

  Future<UserCredential?> signupMethod({email, password, context}) async {
    UserCredential? userCredential;
    try {
      userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }

  //signout method

  signOutMethod({context}) async {
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }

  //storedate

  // storeUserData({name, password, email}) async {
  // DocumentReference store = FirebaseFirestore.instance
  //     .collection("users")
  //     .doc(FirebaseAuth.instance.currentUser!.uid);

  // store.set(
  //     {'name': name, 'password': password, 'email': email, 'imageUrl': ''});

  //   final _firestore = FirebaseFirestore.instance;
  //   await _firestore
  //       .collection('users')
  //       .doc(FirebaseAuth.instance.currentUser!.uid)
  //       .set({
  //     'name': name,
  //     'password': password,
  //     'email': email,
  //     'imageUrl': ''
  //   });
  // }
  storeUserData({name, password, email}) async {
    print(name + email + password);
    var firestore = FirebaseFirestore.instance;
    var abc = await firestore
        .collection(userCollection)
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .set({
      'name': name,
      'password': password,
      'email': email,
      'imageUrl': '',
      'id': currentUser!.uid,
      'order_count': "00",
      'cart_count': "00",
      'whishlist_count': "00",
    });
    // print("abc stire");
  }
}
