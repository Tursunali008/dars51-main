import 'package:dars51/utils/routes.dart';
import 'package:dars51/view_models/courses_viewmodel.dart';
import 'package:dars51/views/screens/courses/course_details.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final courseViewModel = CoursesViewmodel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kurslar"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                RouteNames.addCourseScreen,
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: FutureBuilder(
        future: courseViewModel.list,
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final courses = snapshot.data;
          return courses == null || courses.isEmpty
              ? const Center(
                  child: Text("Ma'lumotlar mavjud emas"),
                )
              : ListView.builder(
                  itemCount: courses.length,
                  itemBuilder: (ctx, index) {
                    return ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) {
                              return CourseDetails(course: courses[index]);
                            },
                          ),
                        );
                      },
                      title: Text(courses[index].title),
                      subtitle: Text("\$${courses[index].price.toString()}"),
                    );
                  },
                );
        },
      ),
    );
  }
}
