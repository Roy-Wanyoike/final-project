import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mzikky_app/widgets/buttons/all.dart';
import 'package:mzikky_app/widgets/inputs/all.dart';
import 'package:mzikky_app/widgets/separator/orline.dart';
import 'package:mzikky_app/helpers/color.helper.dart';

import 'signinScreen.dart';

// ignore: must_be_immutable
class SignupScreen extends StatelessWidget {
  static const routeName = '/signup';

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
                    label: 'SIGN IN',
                    Page: SigninScreen(),
                    size: 100,
                  ),
                ],
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sign Up",
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
                  hint: "Enter  email",
                  inputType: TextInputType.emailAddress),
              SizedBox(
                height: 10,
              ),
              InputField(hint: "Password", inputType: TextInputType.visiblePassword),
              SizedBox(
                height: 20,
              ),
              InputField(hint: "Confirm password", inputType: TextInputType.visiblePassword),
              SizedBox(
                height: 20,
              ),
              TxtButton(
                label: "SIGN UP",
                backgroundColor: ColorsData.Primary,
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
