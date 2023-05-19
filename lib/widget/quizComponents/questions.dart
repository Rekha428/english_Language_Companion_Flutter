class Question {
  int id, answer;
  String question;
  List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "I ______ football every Saturday Afternoon",
    "options": ['am play', 'am playing', 'playing', 'play'],
    "answer_index": 3,
  },
  {
    "id": 2,
    "question": "Don’t make too much noise. John ______ to take a nap.",
    "options": ['tried', 'try', 'is trying', 'tries'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "Paul ______ his teeth as soon as he wakes up.",
    "options": ['brushes', 'is brushing', 'will brush', 'brush'],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question": "He can’t answer the phone. He ______ a shower.",
    "options": ['is taking', 'take', 'taking', 'took'],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question": "How many friends ……… to your birthday party?",
    "options": ['come', 'comes', 'came', 'is coming'],
    "answer_index": 0,
  },
  {
    "id": 6,
    "question": "It ______ many times every winter in New York.",
    "options": ['is snowing', 'snowed', 'snows', 'is snow'],
    "answer_index": 2,
  },
  {
    "id": 7,
    "question": "It ______ many times every winter in New York.",
    "options": ['is snowing', 'snowed', 'snows', 'is snow'],
    "answer_index": 2,
  },
];
