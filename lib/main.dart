import 'package:flutter/material.dart';
import 'package:mvvm_books/features/onBoarding/presetntation/view/on_board_screen.dart';

void main() {
  runApp(const BooksApp());
}

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        fontFamily: 'HK GROTESK',
      ),
      home: const OnBoardScreen(),
    );
  }
}
