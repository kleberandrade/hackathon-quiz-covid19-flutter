import 'dart:math';

import 'package:quiz_covid19_hackathon/models/question.dart';
import 'package:quiz_covid19_hackathon/services/quiz_api.dart';

class QuizController {
  final _random = new Random();

  List<Question> _questionBank;
  int questionIndex = 0;
  bool _shiftAnswer;
  List<int> answers;
  int hitNumber;
  String locale;

  int get questionsNumber => _questionBank.length;
  Question get question => _questionBank[questionIndex];

  Future<void> initialize() async {
    _questionBank = await QuizApi.fetch();
    _questionBank.shuffle();
    _shiftAnswer = _random.nextBool();
    questionIndex = 0;
    hitNumber = 0;
    answers = new List<int>(questionsNumber);
    answers.fillRange(0, questionsNumber, 2);
    print(questionsNumber);
    print(answers);
  }

  bool isLastQuestion() {
    return questionIndex == questionsNumber - 1;
  }

  void nextQuestion() {
    questionIndex = ++questionIndex % _questionBank.length;
    _shiftAnswer = _random.nextBool();
  }

  String getQuestion() {
    return _questionBank[questionIndex].question;
  }

  String getAnswer1() {
    return _shiftAnswer
        ? _questionBank[questionIndex].answer1
        : _questionBank[questionIndex].answer2;
  }

  String getAnswer2() {
    return _shiftAnswer
        ? _questionBank[questionIndex].answer2
        : _questionBank[questionIndex].answer1;
  }

  bool correctAnswer(String answer) {
    var correct = _questionBank[questionIndex].answer1 == answer;
    answers[questionIndex] = correct ? 1 : 0;
    hitNumber += correct ? 1 : 0;
    return correct;
  }
}
