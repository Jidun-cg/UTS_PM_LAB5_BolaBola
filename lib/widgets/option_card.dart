import 'package:flutter/material.dart';
import '../models/quiz_option.dart';

class OptionCard extends StatelessWidget {
  final QuizOption option;
  final bool isSelected;
  final bool isAnswerSubmitted;
  final bool isCorrect;
  final VoidCallback onTap;

  const OptionCard({
    super.key,
    required this.option,
    required this.isSelected,
    required this.isAnswerSubmitted,
    required this.isCorrect,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Color borderColor = theme.colorScheme.outline.withOpacity(0.2);
    Color backgroundColor = theme.cardTheme.color ?? theme.colorScheme.surface;
    Color textColor = theme.colorScheme.onSurface;

    if (isSelected) {
      borderColor = theme.colorScheme.primary;
      backgroundColor = theme.colorScheme.primary.withOpacity(0.1);
    }

    if (isAnswerSubmitted) {
      if (isCorrect) {
        borderColor = Colors.green;
        backgroundColor = Colors.green.withOpacity(0.15);
        textColor = Colors.green.shade800;
      } else if (isSelected) {
        borderColor = Colors.red;
        backgroundColor = Colors.red.withOpacity(0.15);
        textColor = Colors.red.shade800;
      }
    }

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: isAnswerSubmitted ? null : onTap,
        borderRadius: BorderRadius.circular(16),
        child: Ink(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: borderColor,
              width: isSelected || (isAnswerSubmitted && isCorrect) ? 2.5 : 1.0,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.04),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: option.imagePath != null
                        ? Image.asset(
                            option.imagePath!,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: theme.colorScheme.primary.withOpacity(0.1),
                                child: Icon(
                                  Icons.sports_soccer,
                                  size: 40,
                                  color: theme.colorScheme.primary,
                                ),
                              );
                            },
                          )
                        : Container(
                            color: theme.colorScheme.primary.withOpacity(0.1),
                            child: Icon(
                              Icons.sports_soccer,
                              size: 40,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  option.text,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
