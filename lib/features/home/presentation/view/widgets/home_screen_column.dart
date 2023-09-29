import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/core/utils/styles.dart';
import 'book_of_the_week.dart';
import 'recommandad_for_you_list_view.dart';

class HomeScreenColumn extends StatelessWidget {
  const HomeScreenColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 90.h,
      left: 18.w,
      right: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BookOfTheWeekWidget(),
          SizedBox(
            height: 14.h,
          ),
          Text(
            'Recommanded for you',
            style: Style.styles20,
          ),
          SizedBox(
            height: 6.h,
          ),
          const RecommandedForYouListView(),
        ],
      ),
    );
  }
}
