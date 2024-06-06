import 'package:dars51/utils/routes.dart';
import 'package:dars51/views/screens/courses/add_course_screen.dart';
import 'package:dars51/views/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CourseApp());
}

class CourseApp extends StatelessWidget {
  const CourseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.mainScreen,
      routes: {
        RouteNames.mainScreen: (ctx) => const MainScreen(),
        RouteNames.addCourseScreen: (ctx) => const AddCourseScreen(),
      },
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorSchemeSeed: Colors.purple,
//       ),
//       initialRoute: '/',
//       // routes: {
//       //   '/': (context) => const HomeScreen(),
//       //   '/ikkinchi-sahifa': (context) => const SecondScreen(),
//       // },
//       onGenerateRoute: (settings) {
//         print(settings.name);
//         if (settings.name == "/ikkinchi-sahifa") {
//           return MaterialPageRoute(builder: (ctx) {
//             return SecondScreen(username: settings.arguments.toString());
//           });
//         }

//         return MaterialPageRoute(builder: (ctx) {
//           return const HomeScreen();
//         });
//       },
//     );
//   }
// }
