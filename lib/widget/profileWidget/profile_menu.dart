import 'package:engenie/core/colors.dart';
import 'package:engenie/core/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile_menu extends StatelessWidget {
  const Profile_menu({
    super.key,
    required this.text,
    required this.icon,
    required this.press,
  });
  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 500,
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
            elevation: 10,
            backgroundColor: Colors.indigo.shade50,
            padding: const EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              color: Colors.black,
              height: 25,
              width: 25,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                text,
                style: profileHeadline2,
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: black,
            )
          ],
        ),
      ),
    );
  }
}
