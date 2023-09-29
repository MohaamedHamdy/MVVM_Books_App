import 'package:flutter/material.dart';
import 'package:mvvm_books/features/onBoarding/presetntation/view/on_board_screen.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) {
          return const OnBoardScreen();
        });
    }
  }
}
