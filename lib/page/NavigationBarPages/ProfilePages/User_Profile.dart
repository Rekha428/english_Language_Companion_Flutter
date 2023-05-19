import 'package:engenie/core/colors.dart';
import 'package:engenie/page/NavigationBarPages/ProfilePages/Update_Profile.dart';
import 'package:engenie/widget/profileWidget/profile_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/text_style.dart';
import '../../../widget/profileWidget/Profile_picture.dart';
import '../../2navigation_page.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (builder) => const NavigationPage()));
          },
          icon: const Icon(CupertinoIcons.back, size: 24),
          color: black,
        ),
        title: const Text(
          "Profile",
          style: titleText,
        ),
        backgroundColor: Colors.orange.shade100,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              const Profilepicture(), //ProfileImage
              const SizedBox(
                height: 50,
              ),
              Profile_menu(
                text: "My Account",
                icon: "assets/icons/User Icon.svg",
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const updateProfile()));
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Profile_menu(
                text: "Notifications",
                icon: "assets/icons/Bell.svg",
                press: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              Profile_menu(
                text: "Settings",
                icon: "assets/icons/Settings.svg",
                press: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              Profile_menu(
                text: "Help",
                icon: "assets/icons/Question mark.svg",
                press: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              Profile_menu(
                text: "Log Out",
                icon: "assets/icons/Log out.svg",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
