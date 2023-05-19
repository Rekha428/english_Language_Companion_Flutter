import 'package:engenie/widget/layer_1Widgets/myCustomList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class commonMenu extends StatelessWidget {
  commonMenu({
    super.key,
    required this.color,
    required this.title,
    required this.buttonTextcolor,
    required this.onCardClick,
  });
  //final CustomListItem item;
  final Color color;
  final Color buttonTextcolor;
  String title;
  Function onCardClick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onCardClick();
      },
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 90,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: buttonTextcolor,
                fontSize: 23,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

/*Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: GestureDetector(
          child: Container(
            color: color,
            height: 90,
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: buttonTextcolor,
                  fontSize: 23,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}*/
