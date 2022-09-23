import 'package:flutter/material.dart';
import 'package:flutter_project_evaluasi_35/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catatan Rahasia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MySplash(),
    );
  }
}
