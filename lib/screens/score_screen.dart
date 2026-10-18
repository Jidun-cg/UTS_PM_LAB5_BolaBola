import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants/app_assets.dart';
import '../providers/quiz_provider.dart';
import '../providers/theme_provider.dart';
import '../theme/app_theme.dart';
import '../widgets/custom_button.dart';
import 'quiz_screen.dart';
import 'welcome_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  String _getFeedbackMessage(double percentage) {
    if (percentage >= 80) {
      return 'Amazing! Kamu Adalah Juara Dunia Sepak Bola! 🏆';
    } else if (percentage >= 60) {
      return 'Hebat! Pengetahuan Sepak Bola Kamu Sangat Baik! ⚽';
    } else {
      return 'Jangan Menyerah! Pelajari Lagi Trivia Sepak Bola dan Coba Lagi! 💪';
    }
  }

  @override
  Widget build(BuildContext context) {
    final quizProvider = Provider.of<QuizProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    final theme = Theme.of(context);

    final score = quizProvider.score;
    final total = quizProvider.totalQuestions;
    final percentage = quizProvider.scorePercentage;
    final userName = quizProvider.userName.isEmpty ? 'Pemain' : quizProvider.userName;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hasil Kuis'),
        automaticallyImplyLeading: false,
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
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 550),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    AppAssets.trophy,
                    height: 110,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(
                        Icons.emoji_events,
                        size: 100,
                        color: AppTheme.goldAccent,
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Selamat, $userName!',
                    style: theme.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    _getFeedbackMessage(percentage),
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onSurface.withOpacity(0.8),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  Card(
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                      child: Column(
                        children: [
                          Text(
                            'Skor Kamu',
                            style: theme.textTheme.titleMedium,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '$score / $total',
                            style: theme.textTheme.displayMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Persentase: ${percentage.toStringAsFixed(0)}%',
                            style: theme.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  CustomButton(
                    text: 'Main Lagi',
                    icon: Icons.replay,
                    onPressed: () {
                      quizProvider.restartQuiz();
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const QuizScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 12),
                  CustomButton(
                    text: 'Ganti Pemain',
                    icon: Icons.person_outline,
                    backgroundColor: theme.colorScheme.surface,
                    textColor: theme.colorScheme.onSurface,
                    onPressed: () {
                      quizProvider.resetAll();
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WelcomeScreen(),
                        ),
                        (route) => false,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
