import 'package:flutter/material.dart';
import 'package:flutter_application_19/screan/splash_screen.dart';

void main() => runApp(PianoApp());

class PianoApp extends StatelessWidget {
  final TextTheme textTheme = TextTheme(
    headline1: TextStyle(
      fontSize: 30,
      color: Colors.white,
    ),
    headline2: TextStyle(
      fontSize: 24,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Piano App',
      theme: ThemeData(
        textTheme: textTheme,
        primaryColor: Colors.orange,
        scaffoldBackgroundColor: Colors.orange.shade100,
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}