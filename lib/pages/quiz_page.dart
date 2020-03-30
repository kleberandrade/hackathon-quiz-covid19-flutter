import 'package:flutter/material.dart';
import 'package:internationalization/internationalization.dart';
import 'package:quiz_covid19_hackathon/components/centered_circular_progress.dart';
import 'package:quiz_covid19_hackathon/components/centered_message.dart';
import 'package:quiz_covid19_hackathon/components/finish_dialog.dart';
import 'package:quiz_covid19_hackathon/components/quiz_button.dart';
import 'package:quiz_covid19_hackathon/components/quiz_progress.dart';
import 'package:quiz_covid19_hackathon/components/quiz_question.dart';
import 'package:quiz_covid19_hackathon/components/result_dialog.dart';
import 'package:quiz_covid19_hackathon/controllers/quiz_controller.dart';

class QuizPage extends StatefulWidget {
  static const String routePage = '/quiz';

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final _controller = QuizController();
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    await _controller.initialize();

    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Text('QUIZ COVID-19'),
        centerTitle: true,
        elevation: 0.0,
      ),
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: _buildQuiz(),
        ),
      ),
    );
  }

  _buildQuiz() {
    if (_loading)
      return CenteredCircularProgress(
        message: Strings.of(context).valueOf("loading"),
      );

    if (_controller.questionsNumber == 0)
      return CenteredMessage(
        Strings.of(context).valueOf("zero_question"),
        icon: Icons.warning,
      );

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        QuizQuestion(
          _controller.getQuestion(),
        ),
        QuizButton(
          _controller.getAnswer1(),
          onTap: () {
            _showQuestionResult(_controller.getAnswer1());
          },
        ),
        QuizButton(
          _controller.getAnswer2(),
          onTap: () {
            _showQuestionResult(_controller.getAnswer2());
          },
        ),
        QuizProgress(
          amount: _controller.questionsNumber,
          answers: _controller.answers,
        ),
      ],
    );
  }

  _showQuestionResult(String answer) {
    bool correct = _controller.correctAnswer(answer);

    ResultDialog.show(
      context,
      question: _controller.question,
      correct: correct,
      onNext: () {
        setState(() {
          if (_controller.isLastQuestion()) {
            FinishDialog.show(
              context,
              hitNumber: _controller.hitNumber,
              totalQuestion: _controller.questionsNumber,
            );
          } else {
            _controller.nextQuestion();
          }
        });
      },
    );
  }
}
