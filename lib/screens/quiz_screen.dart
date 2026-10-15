import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/quiz_provider.dart';
import '../providers/theme_provider.dart';
import '../widgets/custom_button.dart';
import '../widgets/option_card.dart';
import 'score_screen.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final quizProvider = Provider.of<QuizProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    final theme = Theme.of(context);

    final currentQuestion = quizProvider.currentQuestion;
    final currentQuestionIndex = quizProvider.currentQuestionIndex;
    final totalQuestions = quizProvider.totalQuestions;
    final currentAnswer = quizProvider.currentAnswer;
    final isAnswerSubmitted = quizProvider.isAnswerSubmitted;

    return Scaffold(
      appBar: AppBar(
        title: Text('Soal ${currentQuestionIndex + 1} / $totalQuestions'),
        actions: [
          IconButton(
            icon: Icon(
              themeProvider.isDarkMode ? Icons.light_mode : Icons.dark_mode,
            ),
            onPressed: () {
              themeProvider.toggleTheme();
            },
          ),
        ],
      ),
      body: SafeArea(
        child: OrientationBuilder(
          builder: (context, orientation) {
            final isLandscape = orientation == Orientation.landscape;

            return Column(
              children: [
                LinearProgressIndicator(
                  value: (currentQuestionIndex + 1) / totalQuestions,
                  backgroundColor: theme.colorScheme.primary.withOpacity(0.1),
                  valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary),
                  minHeight: 6,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 700),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Pertanyaan Trivia',
                                      style: theme.textTheme.labelLarge?.copyWith(
                                        color: theme.colorScheme.primary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      currentQuestion.questionText,
                                      style: theme.textTheme.titleMedium?.copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: currentQuestion.options.length,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: isLandscape ? 1.5 : 1.05,
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 12,
                              ),
                              itemBuilder: (context, index) {
                                final option = currentQuestion.options[index];
                                final isSelected = currentAnswer == index;
                                final isCorrect = index == currentQuestion.correctOptionIndex;

                                return OptionCard(
                                  option: option,
                                  isSelected: isSelected,
                                  isAnswerSubmitted: isAnswerSubmitted,
                                  isCorrect: isCorrect,
                                  onTap: () {
                                    quizProvider.selectOption(index);
                                  },
                                );
                              },
                            ),
                            if (isAnswerSubmitted) ...[
                              const SizedBox(height: 16),
                              Container(
                                padding: const EdgeInsets.all(14),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primary.withOpacity(0.08),
                                  borderRadius: BorderRadius.circular(14),
                                  border: Border.all(
                                    color: theme.colorScheme.primary.withOpacity(0.2),
                                  ),
                                ),
                                child: Text(
                                  currentQuestion.explanation,
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 700),
                      child: Row(
                        children: [
                          if (!quizProvider.isFirstQuestion)
                            Expanded(
                              child: CustomButton(
                                text: 'Sebelumnya',
                                icon: Icons.arrow_back,
                                backgroundColor: theme.colorScheme.surface,
                                textColor: theme.colorScheme.onSurface,
                                onPressed: () {
                                  quizProvider.previousQuestion();
                                },
                              ),
                            ),
                          if (!quizProvider.isFirstQuestion) const SizedBox(width: 12),
                          Expanded(
                            child: CustomButton(
                              text: quizProvider.isLastQuestion ? 'Lihat Hasil' : 'Selanjutnya',
                              icon: quizProvider.isLastQuestion ? Icons.check_circle : Icons.arrow_forward,
                              onPressed: isAnswerSubmitted
                                  ? () {
                                      if (quizProvider.isLastQuestion) {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const ScoreScreen(),
                                          ),
                                        );
                                      } else {
                                        quizProvider.nextQuestion();
                                      }
                                    }
                                  : null,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
