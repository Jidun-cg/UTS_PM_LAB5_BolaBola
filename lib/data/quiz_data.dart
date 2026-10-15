import '../models/question.dart';
import '../models/quiz_option.dart';

class QuizData {
  static const List<Question> sampleQuestions = [
    Question(
      id: 'q1',
      questionText: 'Siapa pencetak gol terbanyak sepanjang masa untuk Timnas Inggris?',
      options: [
        QuizOption(
          text: 'Harry Kane',
          imagePath: 'assets/images/kane.jpg',
        ),
        QuizOption(
          text: 'Lionel Messi',
          imagePath: 'assets/images/leo.jpg',
        ),
        QuizOption(
          text: 'Cristiano Ronaldo',
          imagePath: 'assets/images/cr7.jpg',
        ),
        QuizOption(
          text: 'Rodri',
          imagePath: 'assets/images/rodri.jpg',
        ),
      ],
      correctOptionIndex: 0,
      explanation: 'Harry Kane mencatatkan rekor sebagai pencetak gol terbanyak sepanjang masa untuk timnas Inggris.',
    ),
    Question(
      id: 'q2',
      questionText: 'Pemain manakah yang memenangkan penghargaan Ballon d\'Or terbanyak dalam sejarah?',
      options: [
        QuizOption(
          text: 'Cristiano Ronaldo',
          imagePath: 'assets/images/cr7.jpg',
        ),
        QuizOption(
          text: 'Lionel Messi',
          imagePath: 'assets/images/leo.jpg',
        ),
        QuizOption(
          text: 'Rodri',
          imagePath: 'assets/images/rodri.jpg',
        ),
        QuizOption(
          text: 'Ousmane Dembele',
          imagePath: 'assets/images/dembele.jpg',
        ),
      ],
      correctOptionIndex: 1,
      explanation: 'Lionel Messi memenangkan Ballon d\'Or sebanyak 8 kali, terbanyak dalam sejarah sepak bola.',
    ),
    Question(
      id: 'q3',
      questionText: 'Siapa pemenang Ballon d\'Or tahun 2024 yang berposisi sebagai gelandang bertahan?',
      options: [
        QuizOption(
          text: 'Ousmane Dembele',
          imagePath: 'assets/images/dembele.jpg',
        ),
        QuizOption(
          text: 'Harry Kane',
          imagePath: 'assets/images/kane.jpg',
        ),
        QuizOption(
          text: 'Rodri',
          imagePath: 'assets/images/rodri.jpg',
        ),
        QuizOption(
          text: 'Lionel Messi',
          imagePath: 'assets/images/leo.jpg',
        ),
      ],
      correctOptionIndex: 2,
      explanation: 'Rodri meraih Ballon d\'Or 2024 atas performa luar biasanya bersama Manchester City dan Timnas Spanyol.',
    ),
    Question(
      id: 'q4',
      questionText: 'Pemain mana yang memegang rekor pencetak gol terbanyak dalam sejarah Liga Champions UEFA?',
      options: [
        QuizOption(
          text: 'Lionel Messi',
          imagePath: 'assets/images/leo.jpg',
        ),
        QuizOption(
          text: 'Cristiano Ronaldo',
          imagePath: 'assets/images/cr7.jpg',
        ),
        QuizOption(
          text: 'Harry Kane',
          imagePath: 'assets/images/kane.jpg',
        ),
        QuizOption(
          text: 'Ousmane Dembele',
          imagePath: 'assets/images/dembele.jpg',
        ),
      ],
      correctOptionIndex: 1,
      explanation: 'Cristiano Ronaldo memegang rekor top skor Liga Champions UEFA dengan total 140 gol.',
    ),
    Question(
      id: 'q5',
      questionText: 'Pemain mana di bawah ini yang menjuarai Piala Dunia 2018 bersama Timnas Prancis?',
      options: [
        QuizOption(
          text: 'Rodri',
          imagePath: 'assets/images/rodri.jpg',
        ),
        QuizOption(
          text: 'Harry Kane',
          imagePath: 'assets/images/kane.jpg',
        ),
        QuizOption(
          text: 'Cristiano Ronaldo',
          imagePath: 'assets/images/cr7.jpg',
        ),
        QuizOption(
          text: 'Ousmane Dembele',
          imagePath: 'assets/images/dembele.jpg',
        ),
      ],
      correctOptionIndex: 3,
      explanation: 'Ousmane Dembele merupakan bagian dari skuad Timnas Prancis yang memenangkan Piala Dunia 2018 di Rusia.',
    ),
  ];
}
