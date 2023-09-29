import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:mvvm_books/constants.dart';
// import 'package:mvvm_books/core/utils/styles.dart';
import 'package:mvvm_books/features/home/presentation/view/widgets/home_screen_column.dart';

import 'package:mvvm_books/features/home/presentation/view/widgets/custom_app_bar.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: double.maxFinite,
      height: double.maxFinite,
      child: Stack(
        children: [
          Positioned(
            child: Image.asset('assets/images/Vector1.png'),
          ),
          const CustomAppBar(),
          const HomeScreenColumn(),
        ],
      ),
    );
  }
}
