import 'package:engenie/page/question_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/quizComponents/question_controller.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Flutter show the back button automatically
        backgroundColor: Colors.indigo.shade100,
        elevation: 0,
        actions: [
          ElevatedButton(
              onPressed: _controller.nextQuestion, child: const Text("Skip")),
        ],
      ),
      body: Body(),
    );
  }
}
