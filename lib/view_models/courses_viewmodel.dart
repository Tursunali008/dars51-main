import 'package:dars51/models/course.dart';
import 'package:dars51/services/courses_http_services.dart';

class CoursesViewmodel {
  final coursesHttpServices = CoursesHttpServices();

  List<Course> _list = [];

  Future<List<Course>> get list async {
    _list = await coursesHttpServices.getCourses();
    return [..._list];
  }

  Future<void> addCourse({
    required String title,
    required String description,
    required String imageUrl,
    required double price,
  }) async {
    // Todo - Yangi kursni yaratish
    await coursesHttpServices.addCourse(
      title: title,
      description: description,
      imageUrl: imageUrl,
      price: price,
    );
  }

  Future<void> addLessonsToCourse(String id, List<String> lessonIds) async {
    // Todo - Kursga darslar qo'shish
    await coursesHttpServices.addLessonsToCourse(id, lessonIds);
  }
}
