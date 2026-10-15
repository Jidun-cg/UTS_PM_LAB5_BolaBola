import 'package:flutter/material.dart';
import '../data/quiz_data.dart';
import '../models/question.dart';

class QuizProvider extends ChangeNotifier {
  String _userName = '';
  final List<Question> _questions = QuizData.sampleQuestions;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(QuizData.sampleQuestions.length, null);
  bool _isAnswerSubmitted = false;

  String get userName => _userName;
  List<Question> get questions => _questions;
  int get currentQuestionIndex => _currentQuestionIndex;
  int get totalQuestions => _questions.length;
  Question get currentQuestion => _questions[_currentQuestionIndex];
  List<int?> get userAnswers => _userAnswers;
  int? get currentAnswer => _userAnswers[_currentQuestionIndex];
  bool get isAnswerSubmitted => _isAnswerSubmitted;

  int get score {
    int total = 0;
    for (int i = 0; i < _questions.length; i++) {
      if (_userAnswers[i] == _questions[i].correctOptionIndex) {
        total++;
      }
    }
    return total;
  }

  double get scorePercentage {
    if (_questions.isEmpty) return 0.0;
    return (score / _questions.length) * 100;
  }

  bool get isLastQuestion => _currentQuestionIndex == _questions.length - 1;
  bool get isFirstQuestion => _currentQuestionIndex == 0;

  void setUserName(String name) {
    _userName = name.trim();
    notifyListeners();
  }

  void selectOption(int optionIndex) {
    _userAnswers[_currentQuestionIndex] = optionIndex;
    _isAnswerSubmitted = true;
    notifyListeners();
  }

  bool nextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      _currentQuestionIndex++;
      _isAnswerSubmitted = _userAnswers[_currentQuestionIndex] != null;
      notifyListeners();
      return true;
    }
    return false;
  }

  bool previousQuestion() {
    if (_currentQuestionIndex > 0) {
      _currentQuestionIndex--;
      _isAnswerSubmitted = _userAnswers[_currentQuestionIndex] != null;
      notifyListeners();
      return true;
    }
    return false;
  }

  void restartQuiz() {
    _currentQuestionIndex = 0;
    _userAnswers = List.filled(_questions.length, null);
    _isAnswerSubmitted = false;
    notifyListeners();
  }

  void resetAll() {
    _userName = '';
    restartQuiz();
  }
}
