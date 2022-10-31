import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

const appname = "Dukan";
const appversion = "Version 1.0.0";
const credits = "@HusnainKhurshid";
const email = "Email";
const emailHint = "example@gmail.com";
const password = "Password";
const passwordHint = "******";
const forgetPass = "Forget Password";
const confirmPassword = "Confirm Password";
const login = "Log in";
const signup = "Sign Up";
const createNewAccount = "or, create a new account";
const loginWith = "Log in with";
const name = "Name";
const nameHint = "Ahmed Ali";
const privacyPolicy = "Privacy Policy";
const termsandCondition = "Terms and Conditions";
const alreadyhaveanAccount = "Already have an account ? ";

// Firebase short cuts
FirebaseAuth auth = FirebaseAuth.instance;

FirebaseFirestore firestore = FirebaseFirestore.instance;

User? currentUser = auth.currentUser;

const userCollection = "users";
