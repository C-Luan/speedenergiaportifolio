import 'package:flutter/material.dart';
import 'package:speedenergiaportifolio/screen/landingpage/landingpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Speed Energia',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 111, 23, 23)),
        useMaterial3: false,
      ),
      home: const Landingpage(),
    );
  }
}
