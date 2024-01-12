import 'package:flutter/material.dart';
import 'package:videoplayer/Pages/home.dart';
import 'package:videoplayer/Presentation/presentation.dart';
import 'package:videoplayer/library/bottom_navbar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Presentation(),
    );
  }
}
