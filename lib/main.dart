import 'package:flutter/material.dart';
import 'package:practice_app/features/presentation/pages/sing_in.dart';

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
        body: SingInPage(),
      ),
    );
  }
}
