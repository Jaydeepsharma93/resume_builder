import 'package:flutter/material.dart';
import 'package:resume_builder/view/screen/Certificate.dart';
import 'package:resume_builder/view/screen/Profile.dart';
import 'package:resume_builder/view/screen/details.dart';
import 'package:resume_builder/view/screen/education.dart';
import 'package:resume_builder/view/screen/experience.dart';
import 'package:resume_builder/view/screen/hobbie.dart';
import 'package:resume_builder/view/screen/languages.dart';
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
        '/': (context) => const Splash(),
        '/profile': (context) => const Profile(),
        '/detail': (context) => const Details(),
        '/education': (context) => const Education(),
        '/experience': (context) => const Experience(),
        '/skills': (context) => const Skills(),
        '/lan': (context) => const Language(),
        '/certificate': (context) => const Certificate(),
        '/hob' : (context) => const Hobbies(),
      },
    );
  }
}
