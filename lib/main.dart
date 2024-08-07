import 'package:flutter/material.dart';
import 'package:practice_app/features/presentation/pages/cars_page.dart';
import 'package:practice_app/features/presentation/pages/main_page.dart';
import 'package:practice_app/features/presentation/pages/sign_in.dart';
import 'package:practice_app/features/presentation/pages/start_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: StartPage(),
      ),
    );
  }
}
