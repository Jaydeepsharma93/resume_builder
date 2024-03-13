import 'dart:async';

import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.pushNamed(context, '/profile');
    });
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Image.asset('assets/img/bg.jpg'),
      ),
    );
  }
}
