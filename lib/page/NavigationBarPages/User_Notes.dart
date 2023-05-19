import 'package:flutter/material.dart';

class UserNotes extends StatefulWidget {
  const UserNotes({Key? key}) : super(key: key);

  @override
  State<UserNotes> createState() => _UserNotesState();
}

class _UserNotesState extends State<UserNotes> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'Notes',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      )),
    );
  }
}
