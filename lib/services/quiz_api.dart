import 'dart:convert';
import 'package:flutter_device_locale/flutter_device_locale.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_covid19_hackathon/models/question.dart';

class QuizApi {
  static Future<List<Question>> fetch() async {
    try {
      var url = 'https://script.google.com/macros/s/AKfycbwY-BD43v1kB77-jHhYqDsdq1vTwuSxbzhJ1pgxkbslxBX3YW3H/exec';
      var locale = await DeviceLocale.getCurrentLocale();
      var response = await http.get(url + '?locale=${locale.languageCode}');

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        return List<Question>.from(
            data["questions"].map((x) => Question.fromMap(x)));
      } else {
        return List<Question>();
      }

    } catch (error) {
      print(error);
      return List<Question>();
    }
  }
}
