import 'package:flutter/material.dart';
import 'package:mvvm_books/features/authentication/presentation/views/log_in_screen.dart';
import 'package:mvvm_books/features/home/presentation/view/book_details.dart';
import 'package:mvvm_books/features/home/presentation/view/home_screen.dart';
import 'package:mvvm_books/features/onBoarding/presetntation/view/on_board_screen.dart';

class AppRouter {
  static const kHomeScreen = '/homeScreen';
  static const kBookDetails = '/bookDetails';
  static const kLogIn = '/logIn';

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
      case kBookDetails:
        return MaterialPageRoute(builder: (_) {
          return const BookDetails();
        });
      case kLogIn:
        return MaterialPageRoute(builder: (_) {
          return const LogInScreen();
        });
    }
    return null;
  }
}
