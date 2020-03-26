import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class QuizProgress extends StatelessWidget {
  final int amount;
  final List<int> answers;
  final double height;

  const QuizProgress({
    Key key,
    this.amount,
    this.answers,
    this.height = 10.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Center(
              child: StepProgressIndicator(
                totalSteps: amount,
                size: height,
                padding: 1.0,
                customColor: (index){
                  if (answers[index] == 0)
                    return Colors.red;
                  
                  if (answers[index] == 1)
                    return Colors.green;

                  return Colors.grey;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
