import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/core/utils/router.dart';
import 'package:mvvm_books/core/utils/service_locator.dart';
import 'package:mvvm_books/features/home/data/repos/home_repo_implementation.dart';
import 'package:mvvm_books/features/home/presentation/view%20model/book%20of%20the%20week%20cubit/book_of_the_week_cubit.dart';
import 'package:mvvm_books/features/home/presentation/view%20model/featured%20books%20cubit/featured_books_cubit.dart';

void main() {
  runApp(const BooksApp());
}

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => FeaturedBooksCubit(
                getIt.get<HomeRepoImpl>(),
              ),
            ),
            BlocProvider(
              create: (_) => BookOfTheWeekCubit(
                getIt.get<HomeRepoImpl>(),
              ),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                elevation: 0.0,
                backgroundColor: Colors.transparent,
                iconTheme: IconThemeData(
                  color: Colors.black,
                ),
              ),
              fontFamily: 'HK GROTESK',
            ),
            onGenerateRoute: AppRouter.generateRoute,
          ),
        );
      },
    );
  }
}
