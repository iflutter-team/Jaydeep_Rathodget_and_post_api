import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget signUpPageNameTextField() {
  return GetBuilder<SignUpPageController>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: commonTextField("Name", const Icon(Icons.account_box_rounded),
          false, controller.name, TextInputType.text),
    ),
  );
}

Widget signUpPageNumberTextField() {
  return GetBuilder<SignUpPageController>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: commonTextField("Number", const Icon(Icons.phone), false,
          controller.number, TextInputType.number),
    ),
  );
}
Widget signUpPageEmailTextField() {
  return GetBuilder<SignUpPageController>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: commonTextField("E-mail", const Icon(Icons.mail_lock_outlined),
          false, controller.email, TextInputType.emailAddress),
    ),
  );
}
Widget signUpPagePasswordTextField() {
  return GetBuilder<SignUpPageController>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: commonTextField("Password", const Icon(Icons.password), true,
          controller.password, TextInputType.text),
    ),
  );
}

Widget signUpPageConfirmPasswordTextField() {
  return GetBuilder<SignUpPageController>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: commonTextField("Confirm Password", const Icon(Icons.password_rounded),
          true, controller.confirmPassword, TextInputType.text),
    ),
  );
}
Widget signUptButton() {
  return GetBuilder<SignUpPageController>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.only(bottom: 50, top: 30),
      child: SizedBox(
        height: 50,
        width: 250,
        child: ElevatedButton(
          onPressed: () {
            PrefServices.setValue(PrefRes.isSignUp, true);
            controller.signUpButton();
          },
          child: const Text('SignUP',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        ),
      ),
    ),
  );
}