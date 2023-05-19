import 'package:flutter/material.dart';
import 'package:engenie/core/colors.dart';
import 'package:engenie/core/space.dart';
import 'package:engenie/core/text_style.dart';
import 'package:engenie/widget/common%20widget/main_button.dart';
import 'package:engenie/widget/common%20widget/text_fild.dart';

import '../../data/stringsFile.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController userName = TextEditingController();
  TextEditingController userPass = TextEditingController();
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPh = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackBG,
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SpaceVH(height: 50.0),
              const Text(newAcc, style: headline1b),
              const SpaceVH(height: 10.0),
              const Text(fill, style: headline3),
              const SpaceVH(height: 60.0),
              textFild(
                controller: userName,
                image: 'user.svg',
                keyBordType: TextInputType.name,
                hintTxt: 'Full Name',
              ),
              textFild(
                controller: userEmail,
                keyBordType: TextInputType.emailAddress,
                image: 'user.svg',
                hintTxt: 'Email Address',
              ),
              textFild(
                controller: userPh,
                image: 'user.svg',
                keyBordType: TextInputType.phone,
                hintTxt: 'Phone Number',
              ),
              textFild(
                controller: userPass,
                isObs: true,
                image: 'hide.svg',
                hintTxt: 'Password',
              ),
              const SpaceVH(height: 80.0),
              Mainbutton(onTap: () {}, text: 'Sign Up', btnColor: blueButton),
              const SpaceVH(height: 20.0),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'Have an account? ',
                      style: headline.copyWith(fontSize: 14.0, color: black),
                    ),
                    TextSpan(
                      text: ' Sign In',
                      style: headlineDot.copyWith(
                        fontSize: 14.0,
                      ),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
