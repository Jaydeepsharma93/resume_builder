import 'package:flutter/material.dart';
import 'package:resume_builder/view/screen/Profile.dart';
import 'package:resume_builder/view/screen/details.dart';
import 'package:resume_builder/view/screen/education.dart';
import 'package:resume_builder/view/screen/experience.dart';
import 'package:resume_builder/view/screen/langusges.dart';
import 'package:resume_builder/view/screen/skills.dart';
import 'package:resume_builder/view/screen/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/profile': (context) => Profile(),
        '/detail': (context) => Details(),
        '/education': (context) => Education(),
        '/experience': (context) => Experience(),
        '/skills': (context) => Skills(),
        '/langusges': (context) => Langusges()
      },
    );
  }
}
