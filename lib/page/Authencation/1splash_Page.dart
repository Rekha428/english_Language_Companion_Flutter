import 'package:flutter/material.dart';
import 'package:engenie/core/colors.dart';
import 'package:engenie/core/space.dart';
import 'package:engenie/core/text_style.dart';
import 'package:engenie/data/stringsFile.dart';
import 'package:engenie/page/Authencation/1login_page.dart';
import 'package:engenie/widget/common%20widget/main_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: white,
      body: Stack(
        children: [
          Container(
            height: height,
            color: blackBG,
            child: Image.asset(
              'assets/images/92.jpg',
              height: height,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height / 3,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: gradient,
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: 'EnGenie',
                        style: headline,
                      ),
                      TextSpan(
                        text: '.',
                        style: headlineDot,
                      ),
                    ]),
                  ),
                  const SpaceVH(height: 20.0),
                  const Text(
                    splashText,
                    textAlign: TextAlign.center,
                    style: headline2,
                  ),
                  Mainbutton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => const LoginPage()));
                    },
                    btnColor: blueButton,
                    text: 'Get Started',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
