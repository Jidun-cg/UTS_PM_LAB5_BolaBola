import 'quiz_option.dart';

class Question {
  final String id;
  final String questionText;
  final List<QuizOption> options;
  final int correctOptionIndex;
  final String explanation;

  const Question({
    required this.id,
    required this.questionText,
    required this.options,
    required this.correctOptionIndex,
    required this.explanation,
  });
}
