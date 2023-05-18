import 'package:flutter/material.dart';
import 'package:video_calling_with_agora/app/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Calling with Agora',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const App(),
    );
  }
}

