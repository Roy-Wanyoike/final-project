import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mzikky_app/widgets/buttons/all.dart';
import 'package:mzikky_app/widgets/inputs/all.dart';
import 'package:mzikky_app/widgets/separator/orline.dart';
import 'package:mzikky_app/helpers/color.helper.dart';
import '../app/navScreen.dart';

import 'signupScreen.dart';

// ignore: must_be_immutable
class SigninScreen extends StatelessWidget {
  static const routeName = '/signin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedBtn(
                    label: 'SIGN UP',
                    size: 100,
                    Page: SignupScreen(),
                  ),
                ],
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sign In",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Powered by",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InputField(
                  hint: "Enter  email", inputType: TextInputType.emailAddress),
              SizedBox(
                height: 10,
              ),
              InputField(hint: "Password", inputType: TextInputType.text),
              SizedBox(
                height: 20,
              ),
              Text(
                "Forgot password?",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              TxtButton(
                label: "SIGN IN",
                backgroundColor: ColorsData.Primary,
                Page: NavScreen(),
                force: true,
              ),
              const SizedBox(
                height: 20,
              ),
              Orline(),
              SizedBox(
                height: 10,
              ),
              TxtButton(
                label: "CONTINUE WITH FACEBOOK",
                backgroundColor: ColorsData.FaceBook,
              ),
              SizedBox(
                height: 10,
              ),
              TxtButton(
                label: "CONTINUE WITH GOOGLE",
                backgroundColor: ColorsData.Google,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
