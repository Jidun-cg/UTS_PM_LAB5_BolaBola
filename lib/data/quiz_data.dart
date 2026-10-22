import '../models/question.dart';
import '../models/quiz_option.dart';

class QuizData {
  static const List<Question> sampleQuestions = [
    Question(
      id: 'q1',
      questionText: 'Siapa penyerang yang memegang rekor pencetak gol terbanyak sepanjang masa untuk Timnas Inggris?',
      options: [
        QuizOption(
          text: 'Harry Kane',
          imagePath: 'assets/images/kane.jpg',
        ),
        QuizOption(
          text: 'Wayne Rooney',
          imagePath: 'assets/images/rooney.jpg',
        ),
        QuizOption(
          text: 'Michael Owen',
          imagePath: 'assets/images/owen.jpg',
        ),
        QuizOption(
          text: 'Gary Lineker',
          imagePath: 'assets/images/lineker.jpg',
        ),
      ],
      correctOptionIndex: 0,
      explanation: 'Harry Kane memegang rekor top skor sepanjang masa Timnas Inggris dengan melampaui rekor 53 gol milik Wayne Rooney.',
    ),
    Question(
      id: 'q2',
      questionText: 'Pemain manakah yang memegang rekor memenangkan penghargaan Ballon d\'Or terbanyak dalam sejarah?',
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
          text: 'Alejandro Goatnacho',
          imagePath: 'assets/images/goat.jpg',
        ),
        QuizOption(
          text: 'Diego Maradona',
          imagePath: 'assets/images/maradona.jpg',
        ),
      ],
      correctOptionIndex: 1,
      explanation: 'Lionel Messi memenangkan Ballon d\'Or sebanyak 8 kali (2009, 2010, 2011, 2012, 2015, 2019, 2021, 2023).',
    ),
    Question(
      id: 'q3',
      questionText: 'Siapa pemain yang memenangkan penghargaan Ballon d\'Or 2024 usai membawa klubnya menjuarai Premier League dan negaranya menjuarai Euro 2024?',
      options: [
        QuizOption(
          text: 'Kylian Mbappe',
          imagePath: 'assets/images/mbappe.jpg',
        ),
        QuizOption(
          text: 'Erling Haaland',
          imagePath: 'assets/images/haaland.jpg',
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
      explanation: 'Rodri meraih Ballon d\'Or 2024 atas performa gemilangnya membawa Manchester City menjuarai Premier League dan Timnas Spanyol menjuarai Euro 2024.',
    ),
    Question(
      id: 'q4',
      questionText: 'Pemain mana yang memegang rekor pencetak gol terbanyak sepanjang sejarah Liga Champions UEFA (140 gol)?',
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
          text: 'Robert Lewandowski',
          imagePath: 'assets/images/lewa.jpg',
        ),
        QuizOption(
          text: 'Karim Benzema',
          imagePath: 'assets/images/benzema.jpg',
        ),
      ],
      correctOptionIndex: 1,
      explanation: 'Cristiano Ronaldo memegang rekor pencetak gol terbanyak Liga Champions UEFA dengan total 140 gol, unggul atas Lionel Messi (129 gol).',
    ),
    Question(
      id: 'q5',
      questionText: 'Pemain manakah di bawah ini yang TIDAK termasuk dalam skuad yang memenangkan trofi Piala Dunia pada tahun 2018?',
      options: [
        QuizOption(
          text: 'Olivier Giroud',
          imagePath: 'assets/images/giroud.jpg',
        ),
        QuizOption(
          text: 'Zinedine Zidane',
          imagePath: 'assets/images/zizou.jpg',
        ),
        QuizOption(
          text: 'Ousmane Dembele',
          imagePath: 'assets/images/dembele.jpg',
        ),
        QuizOption(
          text: 'Kylian Mbappe',
          imagePath: 'assets/images/mbappe.jpg',
        ),
      ],
      correctOptionIndex: 1,
      explanation: 'Zinedine Zidane menjuarai Piala Dunia pada tahun 1998, sedangkan Giroud, Dembele, dan Mbappe menjuarai Piala Dunia 2018 di Rusia.',
    ),
    Question(
      id: 'q6',
      questionText: 'Siapa pemegang rekor pencetak hat-trick tercepat sepanjang sejarah Premier League (2 menit 56 detik)?',
      options: [
        QuizOption(
          text: 'Erling Haaland',
          imagePath: 'assets/images/haaland.jpg',
        ),
        QuizOption(
          text: 'Sergio Aguero',
          imagePath: 'assets/images/aguero.jpg',
        ),
        QuizOption(
          text: 'Sadio Mane',
          imagePath: 'assets/images/mane.jpg',
        ),
        QuizOption(
          text: 'Mohamed Salah',
          imagePath: 'assets/images/salah.jpg',
        ),
      ],
      correctOptionIndex: 2,
      explanation: 'Sadio Mane mencetak hat-trick tercepat sepanjang sejarah Premier League dalam waktu 2 menit 56 detik saat membela Southampton melawan Aston Villa pada tahun 2015.',
    ),
    Question(
      id: 'q7',
      questionText: 'Pada tahun 2018, siapakah pemain yang memutus dominasi 10 tahun Cristiano Ronaldo & Lionel Messi dengan memenangkan Ballon d\'Or?',
      options: [
        QuizOption(
          text: 'Robert Lewandowski',
          imagePath: 'assets/images/lewa.jpg',
        ),
        QuizOption(
          text: 'Karim Benzema',
          imagePath: 'assets/images/benzema.jpg',
        ),
        QuizOption(
          text: 'Toni Kroos',
          imagePath: 'assets/images/kroos.jpg',
        ),
        QuizOption(
          text: 'Luka Modric',
          imagePath: 'assets/images/modric.jpg',
        ),
      ],
      correctOptionIndex: 3,
      explanation: 'Luka Modric memenangkan Ballon d\'Or 2018 setelah membawa Real Madrid menjuarai Liga Champions dan memimpin Timnas Kroasia hingga ke Final Piala Dunia 2018.',
    ),
    Question(
      id: 'q8',
      questionText: 'Pemain muda manakah yang memenangkan Kopa Trophy 2024 sebagai pemain muda terbaik dunia di usia 17 tahun?',
      options: [
        QuizOption(
          text: 'Lamine Yamal',
          imagePath: 'assets/images/yamal.jpg',
        ),
        QuizOption(
          text: 'Raphinha',
          imagePath: 'assets/images/raphinha.jpg',
        ),
        QuizOption(
          text: 'Alejandro Goatnacho',
          imagePath: 'assets/images/goat.jpg',
        ),
        QuizOption(
          text: 'Kylian Mbappe',
          imagePath: 'assets/images/mbappe.jpg',
        ),
      ],
      correctOptionIndex: 0,
      explanation: 'Lamine Yamal memenangkan Kopa Trophy 2024 setelah tampil luar biasa bersama FC Barcelona dan menjuarai Euro 2024 bersama Timnas Spanyol.',
    ),
    Question(
      id: 'q9',
      questionText: 'Siapa pencetak gol penentu di menit 93:20 yang membawa Manchester City menjuarai gelar Premier League pertama mereka pada tahun 2012?',
      options: [
        QuizOption(
          text: 'Edin Dzeko',
          imagePath: 'assets/images/dzeko.jpg',
        ),
        QuizOption(
          text: 'Sergio Aguero',
          imagePath: 'assets/images/aguero.jpg',
        ),
        QuizOption(
          text: 'Mario Balotelli',
          imagePath: 'assets/images/balotelli.jpg',
        ),
        QuizOption(
          text: 'Yaya Toure',
          imagePath: 'assets/images/toure.jpg',
        ),
      ],
      correctOptionIndex: 1,
      explanation: 'Edin Dzeko menyamakan kedudukan 2-2 di menit 91:15, namun Sergio Aguero mencetak gol penentu kemenangan 3-2 di menit 93:20 dari assist Balotelli.',
    ),
    Question(
      id: 'q10',
      questionText: 'Siapa pemain yang memenangkan Ballon d\'Or 2022 berkat penampilan luar biasanya mencetak 44 gol bersama Real Madrid dalam satu musim?',
      options: [
        QuizOption(
          text: 'Karim Benzema',
          imagePath: 'assets/images/benzema.jpg',
        ),
        QuizOption(
          text: 'Kylian Mbappe',
          imagePath: 'assets/images/mbappe.jpg',
        ),
        QuizOption(
          text: 'Luka Modric',
          imagePath: 'assets/images/modric.jpg',
        ),
        QuizOption(
          text: 'Sadio Mane',
          imagePath: 'assets/images/mane.jpg',
        ),
      ],
      correctOptionIndex: 0,
      explanation: 'Karim Benzema meraih Ballon d\'Or 2022 atas performa fenomenalnya mencetak 44 gol dalam 46 pertandingan bersama Real Madrid.',
    ),
    Question(
      id: 'q11',
      questionText: 'Gelandang manakah yang memenangkan 5 gelar Liga Champions bersama dua klub berbeda dan resmi pensiun usai Euro 2024?',
      options: [
        QuizOption(
          text: 'Luka Modric',
          imagePath: 'assets/images/modric.jpg',
        ),
        QuizOption(
          text: 'Toni Kroos',
          imagePath: 'assets/images/kroos.jpg',
        ),
        QuizOption(
          text: 'Rodri',
          imagePath: 'assets/images/rodri.jpg',
        ),
        QuizOption(
          text: 'Sadio Mane',
          imagePath: 'assets/images/mane.jpg',
        ),
      ],
      correctOptionIndex: 1,
      explanation: 'Toni Kroos resmi pensiun usai Euro 2024 dengan mengoleksi 5 gelar Liga Champions bersama Real Madrid dan Bayern Munich serta Piala Dunia 2014.',
    ),
    Question(
      id: 'q12',
      questionText: 'Siapa pemain yang mencatatkan rekor 32 gol dalam satu musim Premier League (format 38 pertandingan) sebelum rekornya dipecahkan Haaland?',
      options: [
        QuizOption(
          text: 'Mohamed Salah',
          imagePath: 'assets/images/salah.jpg',
        ),
        QuizOption(
          text: 'Sadio Mane',
          imagePath: 'assets/images/mane.jpg',
        ),
        QuizOption(
          text: 'Wayne Rooney',
          imagePath: 'assets/images/rooney.jpg',
        ),
        QuizOption(
          text: 'Michael Owen',
          imagePath: 'assets/images/owen.jpg',
        ),
      ],
      correctOptionIndex: 0,
      explanation: 'Mohamed Salah mencetak 32 gol pada musim debutnya di Liverpool (2017/2018) di Premier League.',
    ),
    Question(
      id: 'q13',
      questionText: 'Pemain mana yang memecahkan rekor pencetak gol terbanyak dalam satu musim Bundesliga dengan mencetak 41 gol?',
      options: [
        QuizOption(
          text: 'Erling Haaland',
          imagePath: 'assets/images/haaland.jpg',
        ),
        QuizOption(
          text: 'Harry Kane',
          imagePath: 'assets/images/kane.jpg',
        ),
        QuizOption(
          text: 'Robert Lewandowski',
          imagePath: 'assets/images/lewa.jpg',
        ),
        QuizOption(
          text: 'Pierre-Emerick Aubameyang',
          imagePath: 'assets/images/auba.jpg',
        ),
      ],
      correctOptionIndex: 2,
      explanation: 'Robert Lewandowski mencetak 41 gol dalam satu musim Bundesliga 2020/2021 bersama Bayern Munich.',
    ),
    Question(
      id: 'q14',
      questionText: 'Siapa legenda yang mencetak gol ikonik \'Tangan Tuhan\' dan \'Gol Abad Ini\' pada perempat final Piala Dunia 1986?',
      options: [
        QuizOption(
          text: 'Mario Kempes',
          imagePath: 'assets/images/kempes.jpg',
        ),
        QuizOption(
          text: 'Diego Maradona',
          imagePath: 'assets/images/maradona.jpg',
        ),
        QuizOption(
          text: 'Gabriel Batistuta',
          imagePath: 'assets/images/batistuta.jpg',
        ),
        QuizOption(
          text: 'Alejandro Goatnacho',
          imagePath: 'assets/images/goat.jpg',
        ),
      ],
      correctOptionIndex: 1,
      explanation: 'Diego Maradona memimpin Argentina menjuarai Piala Dunia 1986 dan mencetak dua gol ikonik ke gawang Inggris di perempat final.',
    ),
    Question(
      id: 'q15',
      questionText: 'Siapa pemain yang mencetak hat-trick di pertandingan Final Piala Dunia 2022 sekaligus meraih penghargaan Sepatu Emas?',
      options: [
        QuizOption(
          text: 'Kylian Mbappe',
          imagePath: 'assets/images/mbappe.jpg',
        ),
        QuizOption(
          text: 'Ousmane Dembele',
          imagePath: 'assets/images/dembele.jpg',
        ),
        QuizOption(
          text: 'Olivier Giroud',
          imagePath: 'assets/images/giroud.jpg',
        ),
        QuizOption(
          text: 'Karim Benzema',
          imagePath: 'assets/images/benzema.jpg',
        ),
      ],
      correctOptionIndex: 0,
      explanation: 'Kylian Mbappe mencetak hat-trick di final Piala Dunia 2022 dan meraih penghargaan Sepatu Emas (Top Skor) dengan 8 gol.',
    ),
    Question(
      id: 'q16',
      questionText: 'Siapa pemain termuda yang memenangkan penghargaan Ballon d\'Or dari Inggris (di usia 21 tahun pada tahun 2001)?',
      options: [
        QuizOption(
          text: 'Wayne Rooney',
          imagePath: 'assets/images/rooney.jpg',
        ),
        QuizOption(
          text: 'Michael Owen',
          imagePath: 'assets/images/owen.jpg',
        ),
        QuizOption(
          text: 'Gary Lineker',
          imagePath: 'assets/images/lineker.jpg',
        ),
        QuizOption(
          text: 'Harry Kane',
          imagePath: 'assets/images/kane.jpg',
        ),
      ],
      correctOptionIndex: 1,
      explanation: 'Michael Owen meraih Ballon d\'Or 2001 pada usia 21 tahun usai membawa Liverpool meraih treble trofi domestik dan Eropa.',
    ),
    Question(
      id: 'q17',
      questionText: 'Siapa penyerang yang memegang rekor sebagai pencetak gol terbanyak sepanjang masa untuk Timnas Prancis?',
      options: [
        QuizOption(
          text: 'Olivier Giroud',
          imagePath: 'assets/images/giroud.jpg',
        ),
        QuizOption(
          text: 'Kylian Mbappe',
          imagePath: 'assets/images/mbappe.jpg',
        ),
        QuizOption(
          text: 'Karim Benzema',
          imagePath: 'assets/images/benzema.jpg',
        ),
        QuizOption(
          text: 'Zinedine Zidane',
          imagePath: 'assets/images/zizou.jpg',
        ),
      ],
      correctOptionIndex: 0,
      explanation: 'Olivier Giroud mencatatkan rekor sebagai pencetak gol terbanyak sepanjang masa Timnas Prancis dengan 57 gol, melampaui Thierry Henry (51 gol).',
    ),
    Question(
      id: 'q18',
      questionText: 'Winger manakah yang mencetak hat-trick spektakuler saat menundukkan Bayern Munich 4-1 di Liga Champions musim 2024/2025?',
      options: [
        QuizOption(
          text: 'Raphinha',
          imagePath: 'assets/images/raphinha.jpg',
        ),
        QuizOption(
          text: 'Lamine Yamal',
          imagePath: 'assets/images/yamal.jpg',
        ),
        QuizOption(
          text: 'Ousmane Dembele',
          imagePath: 'assets/images/dembele.jpg',
        ),
        QuizOption(
          text: 'Sadio Mane',
          imagePath: 'assets/images/mane.jpg',
        ),
      ],
      correctOptionIndex: 0,
      explanation: 'Raphinha tampil impresif sebagai kapten Barcelona dengan mencetak hat-trick spektakuler saat melibas Bayern Munich 4-1.',
    ),
    Question(
      id: 'q19',
      questionText: 'Siapa penyerang yang mencetak 36 gol pada musim pertamanya di Premier League sekaligus menjadi rekor gol terbanyak satu musim?',
      options: [
        QuizOption(
          text: 'Erling Haaland',
          imagePath: 'assets/images/haaland.jpg',
        ),
        QuizOption(
          text: 'Robert Lewandowski',
          imagePath: 'assets/images/lewa.jpg',
        ),
        QuizOption(
          text: 'Harry Kane',
          imagePath: 'assets/images/kane.jpg',
        ),
        QuizOption(
          text: 'Sergio Aguero',
          imagePath: 'assets/images/aguero.jpg',
        ),
      ],
      correctOptionIndex: 0,
      explanation: 'Erling Haaland mencetak 36 gol dalam 35 laga Premier League musim 2022/2023 bersama Manchester City.',
    ),
    Question(
      id: 'q20',
      questionText: 'Siapa penyerang legendaris yang terkenal karena tidak pernah menerima satu pun kartu kuning atau merah sepanjang karier profesionalnya?',
      options: [
        QuizOption(
          text: 'Gary Lineker',
          imagePath: 'assets/images/lineker.jpg',
        ),
        QuizOption(
          text: 'Wayne Rooney',
          imagePath: 'assets/images/rooney.jpg',
        ),
        QuizOption(
          text: 'Michael Owen',
          imagePath: 'assets/images/owen.jpg',
        ),
        QuizOption(
          text: 'Harry Kane',
          imagePath: 'assets/images/kane.jpg',
        ),
      ],
      correctOptionIndex: 0,
      explanation: 'Gary Lineker terkenal sebagai salah satu pemain paling fair-play dalam sejarah sepak bola, tanpa pernah menerima kartu kuning atau merah dalam 560+ pertandingan.',
    ),
  ];
}
