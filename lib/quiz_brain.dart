import 'package:myapp/question.dart';

class QuizBrain {
  int _questionNo = 0;

  final List<Question> _questionBank = [
    Question('Flutter is most popular programming language.', false),
    Question('India is a growing economy.', true),
    Question('India is a leader in the field of information technology.', true),
    Question(
        'Horoscopes accurately predict future events 85% of the time.', false),
    Question(
        'Intelligent people have more zinc and copper in their hair.', true),
    Question(
        'In England, the Speaker of the House is not allowed to speak.', true),
    Question(
        'In Bangladesh, kids as young as 15 can be jailed for cheating on their finals.',
        true),
    Question('The Earth is the largest planet in the solar system.', false),
    Question('There are nine planets in our solar system.', false),
    Question('Peanuts are one of the ingredients in dynamite.', true),
  ];

  void nextQuestion() {
    if (_questionNo < _questionBank.length - 1) {
      _questionNo++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNo].questionText!;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNo].questionAnswer!;
  }

  bool isFinished() {
    if (_questionNo >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNo = 0;
  }
}
