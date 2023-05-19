import 'package:engenie/core/colors.dart';
import 'package:engenie/page/NavigationBarPages/ProfilePages/User_Profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/text_style.dart';
import '../../../widget/profileWidget/Profile_picture.dart';
import '../../../widget/common widget/main_button.dart';
import '../../../widget/profileWidget/profile_Text_Field.dart';

class updateProfile extends StatefulWidget {
  const updateProfile({Key? key}) : super(key: key);

  @override
  State<updateProfile> createState() => _updateProfileState();
}

class _updateProfileState extends State<updateProfile> {
  TextEditingController name = TextEditingController();
  TextEditingController passWord = TextEditingController();
  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (builder) => const UserProfile()));
          },
          icon: const Icon(CupertinoIcons.back, size: 24),
          color: black,
        ),
        title: const Text(
          " Edit Profile",
          style: titleText,
        ),
        backgroundColor: Colors.orange.shade100,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Profilepicture(),
            const SizedBox(
              height: 50,
            ),
            profileTextField(
                hintTxt: 'Name',
                image: 'assets/icons/User.svg',
                controller: name),
            const SizedBox(
              height: 10,
            ),
            profileTextField(
                hintTxt: 'Password',
                isObs: true,
                image: 'assets/icons/Lock.svg',
                controller: passWord),
            const SizedBox(
              height: 10,
            ),
            profileTextField(
                hintTxt: 'Phone',
                image: 'assets/icons/Call.svg',
                controller: phone),
            const SizedBox(
              height: 30,
            ),
            Mainbutton(
              onTap: () {},
              text: 'Save Details',
              btnColor: yellowButton,
              txtColor: black,
            ),
          ],
        ),
      ),
    );
  }
}
