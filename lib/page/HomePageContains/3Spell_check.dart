import 'package:flutter/material.dart';
import '../../core/colors.dart';
import '../../widget/layer_1Widgets/myCustomList.dart';

class SpellCheck extends StatelessWidget {
  SpellCheck({Key? key}) : super(key: key);

  final List<CustomListItem> items = [
    CustomListItem(title: "Word List 5000"),
    CustomListItem(title: "Verb List"),
    CustomListItem(title: "Phrasal Verb"),
    CustomListItem(title: "Proverbs"),
    CustomListItem(title: "Idioms"),
    CustomListItem(title: "Homophones"),
    CustomListItem(title: "One Word Substitution"),
    CustomListItem(title: "Synonyms"),
    CustomListItem(title: "Linking Words"),
    CustomListItem(title: "Prepositions"),
    CustomListItem(title: "Interjections"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pastelGreen,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 350,
            pinned: true,
            backgroundColor: pastelGreenLight,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/images/SpellPage.jpg"),
              title: const Text(
                "S p e l l  C h e c k",
                textAlign: TextAlign.center,
                style: TextStyle(color: black),
              ),
            ),
          ),
          MyCustomList(
            items: items,
            buttoncolor: pastelGreenLight,
            buttonTextcolor: black,
          ),
        ],
      ),
    );
  }
}
