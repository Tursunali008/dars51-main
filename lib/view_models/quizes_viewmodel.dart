import 'package:dars51/models/quiz.dart';

class QuizesViewmodel {
  List<Quiz> _list = [];

  List<Quiz> get list {
    return [..._list];
  }
}
