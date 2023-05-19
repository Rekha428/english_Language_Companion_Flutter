import 'package:flutter/material.dart';
import '../../core/colors.dart';
import '../../widget/layer_1Widgets/myCustomList.dart';
import '../categoriesPage.dart';

class Grammar extends StatefulWidget {
  Grammar({Key? key}) : super(key: key);

  @override
  State<Grammar> createState() => _GrammarState();
}

class _GrammarState extends State<Grammar> {
  final List<CustomListItem> items = [
    CustomListItem(title: "Complete Grammar Course"),
    CustomListItem(title: "Alphabet Wise Grammar"),
    CustomListItem(title: "Common Grammar Confusion"),
    CustomListItem(title: "Grammar Topic Videos"),
    CustomListItem(title: "Grammar Fun Picture Course"),
    CustomListItem(title: "Grammar Fun Picture Course"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: paleBlue, //Light // paleBlue
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 350,
            pinned: true,
            backgroundColor: paleBlueLight,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/images/grammarPage.jpg"),
              title: const Text(
                "G r a m m a r  P a g e",
                style: TextStyle(color: black),
              ),
              centerTitle: true,
            ),
          ),
          MyCustomList(
            items: items,
            buttoncolor: paleBlueLight,
            buttonTextcolor: black,
          ),
        ],
      ),
    );
  }
}
