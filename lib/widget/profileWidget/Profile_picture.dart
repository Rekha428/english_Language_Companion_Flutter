import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profilepicture extends StatelessWidget {
  const Profilepicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: const Image(
              image: AssetImage("assets/images/Profile Image.png"),
            ),
          ),
          Positioned(
            right: -1,
            bottom: 0,
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey.shade300,
              ),
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/Camera Icon.svg"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
