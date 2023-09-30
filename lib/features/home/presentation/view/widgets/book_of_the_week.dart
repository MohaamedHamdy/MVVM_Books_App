// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'right_section_of_book_of_the_week.dart';

class BookOfTheWeekWidget extends StatelessWidget {
  const BookOfTheWeekWidget({
    Key? key,
    this.isBookDetailPage = false,
  }) : super(key: key);

  final bool isBookDetailPage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, AppRouter.kBookDetails);
      },
      child: Padding(
        padding: EdgeInsets.only(right: 16.0.w),
        child: Material(
          borderRadius: BorderRadius.circular(20.0.r),
          elevation: !isBookDetailPage ? 3.0 : 0.0,
          color: !isBookDetailPage ? Colors.white : Colors.transparent,
          child: Container(
            width: double.infinity,
            height: !isBookDetailPage ? 160.h : 190.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0.r),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/book.png',
                ),
                RightSection(
                  isBookDetailPage: isBookDetailPage,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
