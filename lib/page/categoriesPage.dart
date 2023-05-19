import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../core/colors.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.back, size: 24),
          color: black,
        ),
        backgroundColor: Colors.orange.shade100,
        elevation: 0,
      ),
    );
  }
}
