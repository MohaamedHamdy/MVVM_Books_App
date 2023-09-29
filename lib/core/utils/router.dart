import 'package:flutter/material.dart';
import 'package:mvvm_books/features/home/presentation/view/home_screen.dart';
import 'package:mvvm_books/features/onBoarding/presetntation/view/on_board_screen.dart';

class AppRouter {
  static const kHomeScreen = '/homeScreen';

  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) {
          return const OnBoardScreen();
        });
      case kHomeScreen:
        return MaterialPageRoute(builder: (_) {
          return const HomeScreen();
        });
    }
    return null;
  }
}
