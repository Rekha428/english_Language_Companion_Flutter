import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../page/categoriesPage.dart';
import '../../page/quiz_screen.dart';
import 'listMenu.dart';

class CustomListItem {
  final String title;

  CustomListItem({required this.title});
}

class MyCustomList extends StatelessWidget {
  final List<CustomListItem> items;
  final Color buttoncolor;
  final Color buttonTextcolor;

  const MyCustomList({
    super.key,
    required this.items,
    required this.buttoncolor,
    required this.buttonTextcolor,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        final CustomListItem item = items[index];
        return commonMenu(
            color: buttoncolor,
            buttonTextcolor: buttonTextcolor,
            title: item.title,
            onCardClick: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QuizScreen()));
            });
      }, childCount: items.length),
    );
  }
} /**/
