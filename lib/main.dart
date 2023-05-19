import 'package:engenie/page/Authencation/1splash_Page.dart';
import 'package:engenie/page/HomePageContains/3Grammar.dart';
import 'package:engenie/page/HomePageContains/3Quiz.dart';
import 'package:engenie/page/HomePageContains/3Reading.dart';
import 'package:engenie/page/categoriesPage.dart';
import 'package:flutter/material.dart';
import 'package:engenie/core/style.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: Styles.themeData(),
        home: HomePage(), //
      ),
    );
  }
}
//Styles.themeData()
