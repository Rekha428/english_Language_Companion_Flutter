import 'package:flutter/material.dart';
import '../../core/colors.dart';
import '../../widget/layer_1Widgets/myCustomList.dart';
import '../categoriesPage.dart';

class Reading extends StatefulWidget {
  Reading({Key? key}) : super(key: key);

  @override
  State<Reading> createState() => _ReadingState();
}

class _ReadingState extends State<Reading> {
  final List<CustomListItem> items = [
    CustomListItem(title: "Basic Comprehension"),
    CustomListItem(title: "Midway Comprehension"),
    CustomListItem(title: "Advanced Comprehension"),
    CustomListItem(title: "Multiple Choice Questions"),
    CustomListItem(title: "True False Questions"),
    CustomListItem(title: "Fill in the Blanks Questions"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyBlueLight,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 350,
            pinned: true,
            backgroundColor: greyBlue,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/images/readingpage.jpg"),
              title: const Text(
                "R e a d i n g  P a g e",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          MyCustomList(
            items: items,
            buttoncolor: greyBlue,
            buttonTextcolor: white,
          ),
        ],
      ),
    );
  }
}

//lass commonMenu extends StatelessWidget {
// const commonMenu({
//   super.key,
// });

// @override
// Widget build(BuildContext context) {
//   return Padding(
//     padding: EdgeInsets.all(20),
//     child: ClipRRect(
//       borderRadius: BorderRadius.circular(20),
//       child: Container(
//         color: Colors.blueGrey.shade800,
//         height: 100,
//       ),
//     ),
//   );
// }
//
