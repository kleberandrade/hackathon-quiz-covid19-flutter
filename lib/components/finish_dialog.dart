import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internationalization/internationalization.dart';
import 'package:quiz_covid19_hackathon/pages/quiz_page.dart';
import 'package:share/share.dart';

class FinishDialog {
  static Future show(
    BuildContext context, {
    int hitNumber,
    int totalQuestion,
  }) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.grey.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          title: CircleAvatar(
            backgroundColor: Colors.green,
            maxRadius: 35.0,
            child: Icon(
              hitNumber < 6 ? Icons.warning : Icons.favorite,
              color: Colors.grey.shade900,
            ),
          ),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                Strings.of(context).valueOf("congratulations"),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                Strings.of(context)
                    .valueOf("win_text")
                    .replaceAll("<HIT>", hitNumber.toString())
                    .replaceAll("<TOTAL>", totalQuestion.toString()),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          actions: [
            FlatButton(
              child: Text(Strings.of(context).valueOf("share").toUpperCase()),
              onPressed: () {
                Share.share(Strings.of(context)
                    .valueOf("win_share_text")
                    .replaceAll("<HIT>", hitNumber.toString())
                    .replaceAll("<TOTAL>", totalQuestion.toString()));
              },
            ),
            FlatButton(
              child: Text(Strings.of(context).valueOf("restart").toUpperCase()),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizPage()),
                );
              },
            ),
            FlatButton(
              child: Text(Strings.of(context).valueOf("quit").toUpperCase()),
              onPressed: () {
                SystemNavigator.pop();
              },
            )
          ],
        );
      },
    );
  }
}
