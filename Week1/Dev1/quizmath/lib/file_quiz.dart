

class FileQuiz {
  static final List<Question> questionsBasic = [
    Question(
      question: 'Solve: 2 + 3 = ?',
      options: ['A. 4', 'B. 5', 'C. 6', 'D. 7'],
      correctAnswer: 'B. 5',
    ),
    Question(
      question: 'multiplication: 5 * 1?',
      options: ['A. 3', 'B. 4', 'C. 5', 'D. 6'],
      correctAnswer: 'C. 5',
    ),
    Question(
      question: 'What is the result of 4 minus 2?',
      options: ['A. 2', 'B. 3', 'C. 4', 'D. 5'],
      correctAnswer: 'A. 2',
    ),
    Question(
      question: 'Add: 7 + 5 = ?',
      options: ['A. 9', 'B. 10', 'C. 11', 'D. 12'],
      correctAnswer: 'D. 12',
    ),
    Question(
      question: 'division: 25 / 5?',
      options: ['A. 4', 'B. 5', 'C. 6', 'D. 7'],
      correctAnswer: 'B. 5',
    ),
    Question(
      question: 'What is the result of 8 divided by 2?',
      options: ['A. 2', 'B. 3', 'C. 4', 'D. 5'],
      correctAnswer: 'C. 4',
    ),
    Question(
      question: 'Subtract: 9 - 3 = ?',
      options: ['A. 4', 'B. 5', 'C. 6', 'D. 7'],
      correctAnswer: 'C. 6',
    ),
    Question(
      question: 'Count the number of birds?',
      options: ['A. 2', 'B. 3', 'C. 4', 'D. 5'],
      correctAnswer: 'C. 4',
    ),
    Question(
      question: 'Add: 6 + 4 = ?',
      options: ['A. 8', 'B. 9', 'C. 10', 'D. 11'],
      correctAnswer: 'C. 10',
    ),
    Question(
      question: 'What is the result of 10 minus 3?',
      options: ['A. 4', 'B. 5', 'C. 7', 'D. 8'],
      correctAnswer: 'C. 7',
    ),
    // Add more questions here
  ];
  static final List<Question> questionsMedium = [
    Question(
      question: 'Calculate the value of 5 × 7?',
      options: ['A. 25', 'B. 30', 'C. 35', 'D. 40'],
      correctAnswer: 'C. 35',
    ),    Question(
      question: ' What is the place value of the digit 9 in the number 59,874?',
      options: ['A. Thousands', 'B. Tens', 'C. Hundreds', 'D. Units'],
      correctAnswer: 'A. Thousands',
    ),    Question(
      question: 'Simplify: 3 + 2 × 4?',
      options: ['A. 20', 'B. 15', 'C. 11', 'D. 19'],
      correctAnswer: 'B. 15',
    ),    Question(
      question: 'Find the fraction equivalent to 0.75?',
      options: ['A. 1/2', 'B. 3/4', 'C. 2/3', 'D. 4/5'],
      correctAnswer: 'B. 3/4',
    ),    Question(
      question: 'Calculate the perimeter of a rectangle with length 8 cm and width 5 cm?',
      options: ['A. 10 cm', 'B. 16 cm', 'C. 26 cm', 'D. 40 cm'],
      correctAnswer: 'C. 26 cm',
    ),    Question(
      question: 'Find the prime numbers between 20 and 30?',
      options: ['A. 21, 22, 23, 24, 25, 26, 27, 28, 29, 30', 'B. 20, 21, 22, 23, 24, 25, 26, 27, 28, 29', 'C. 20, 22, 24, 26, 28, 30', 'D. 23, 29'],
      correctAnswer: 'D. 23, 29',
    ),    Question(
      question: 'Calculate the area of a triangle with base 6 cm and height 9 cm?',
      options: ['A. 12 cm²', 'B. 18 cm²', 'C. 27 cm²', 'D. 36 cm²'],
      correctAnswer: 'B. 18 cm²',
    ),    Question(
      question: 'Find the next number in the pattern: 2, 5, 10, 17, ___?',
      options: ['A. 22', 'B. 24', 'C. 26', 'D. 28'],
      correctAnswer: 'C. 26',
    ),    Question(
      question: 'Solve the equation: 3x + 7 = 22?',
      options: ['A. x = 5', 'B. x = 7', 'C. x = 8', 'D. x = 9'],
      correctAnswer: 'D. x = 9',
    ),
    Question(
      question: 'Calculate the value of 4² + 3 × 2 - 1?',
      options: ['A. 22', 'B. 15', 'C. 11', 'D. 19'],
      correctAnswer: 'B. 15',
    ),

    // Add more questions here
  ];
  static final List<Question> questionsChallenging = [
    Question(
      question: 'Solve the equation: 2x + 5 = 15?',
      options: ['A. x = 5', 'B. x = 6', 'C. x = 7', 'D. x = 8'],
      correctAnswer: 'A. x = 5',
    ),
    Question(
      question: 'Find the area of a circle with a radius of 4 cm?',
      options: ['A. 8π cm²', 'B. 16π cm²', 'C. 32π cm²', 'D. 64π cm²'],
      correctAnswer: 'B. 16π cm²',
    ),
    Question(
      question: 'Find the maximum value of the function y = 2x² - 4x + 3?',
      options: ['A. 1', 'B. 2', 'C. 3', 'D. 4'],
      correctAnswer: 'C. 3',
    ),
    Question(
      question: 'Calculate the sum of 1 + 2 + 3 + ... + 10?',
      options: ['A. 45', 'B. 50', 'C. 55', 'D. 60'],
      correctAnswer: 'C. 55',
    ),
    Question(
      question:
          'Find the number of solutions for the quadratic equation 3x² + 2x - 1 = 0?',
      options: ['A. 0', 'B. 1', 'C. 2', 'D. 3'],
      correctAnswer: 'C. 2',
    ),
    Question(
      question: 'Calculate the value of log₃27?',
      options: ['A. 1', 'B. 2', 'C. 3', 'D. 4'],
      correctAnswer: 'B. 3',
    ),
    Question(
      question:
          'Find the perimeter of a triangle with side lengths of 5 cm, 6 cm, and 8 cm?',
      options: ['A. 15 cm', 'B. 18 cm', 'C. 20 cm', 'D. 24 cm'],
      correctAnswer: 'B. 18 cm',
    ),
    Question(
      question: 'Find the value of sin(π/2)?',
      options: ['A. 0', 'B. 1/2', 'C. 1', 'D. 2'],
      correctAnswer: 'C. 1',
    ),
    Question(
      question: 'Calculate the value of 3! (factorial of 3)?',
      options: ['A. 3', 'B. 6', 'C. 9', 'D. 12'],
      correctAnswer: 'B. 6',
    ),
    Question(
      question: 'Find the value of cos(0)?',
      options: ['A. 0', 'B. 1/2', 'C. 1', 'D. 2'],
      correctAnswer: 'C. 1',
    ),
    // Add more questions here
  ];
}

class Question {
  final String question;
  final List<String> options;
  final String correctAnswer;

  Question({
    required this.question,
    required this.options,
    required this.correctAnswer,
  });
}
