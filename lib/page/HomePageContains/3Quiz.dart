import 'package:flutter/material.dart';
import '../../core/colors.dart';
import '../../widget/layer_1Widgets/myCustomList.dart';
import '../categoriesPage.dart';

class Quiz extends StatelessWidget {
  Quiz({Key? key}) : super(key: key);
  final List<CustomListItem> items = [
    CustomListItem(title: "Confusing Words"),
    CustomListItem(title: "Synonym Quiz"),
    CustomListItem(title: "Spelling Quiz"),
    CustomListItem(title: "Basic Grammar Quiz"),
    CustomListItem(title: "Tense Quiz"),
    CustomListItem(title: "Advance Grammar Quiz"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pastelPinkLight,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 350,
            pinned: true,
            backgroundColor: pastelPink,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("Q u i z  P a g e"),
              centerTitle: true,
              background: Image.asset(
                "assets/images/QuizPage.jpg",
                height: 100,
              ),
            ),
          ),
          MyCustomList(
            items: items,
            buttoncolor: pastelPink,
            buttonTextcolor: white,
          ),
        ],
      ),
    );
  }
}

//ListTile(
//    title: Text("Item $index"),
//        )
