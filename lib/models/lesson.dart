import 'package:dars51/models/quiz.dart';

class Lesson {
  String id;
  String title;
  String description;
  String videoUrl;
  List<Quiz> quizes;
  String courseId;

  Lesson({
    required this.id,
    required this.title,
    required this.description,
    required this.videoUrl,
    required this.quizes,
    required this.courseId,
  });
}
