import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/constants.dart';
import 'package:mvvm_books/core/utils/styles.dart';

import 'buttons_widget.dart';

class BookOfTheWeekWidget extends StatelessWidget {
  const BookOfTheWeekWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0.r),
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.asset(
          'assets/images/book.png',
        ),
        const RightSection(),
      ]),
    );
  }
}

class RightSection extends StatelessWidget {
  const RightSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0.h),
      child: Column(
        children: [
          Text(
            'The Psychology of Money',
            style: Style.styles16.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            width: 180,
            child: Text(
              'The psychology of money is the study of our behavior with money. Success with money isn\'t about knowledge, IQ or how good you are at math. It\'s about behavior, and everyone is prone to certain behaviors over others.',
              style: Style.styles12.copyWith(
                fontSize: 9.sp,
                color: kGreyColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          const ButtonsWidget(),
        ],
      ),
    );
  }
}
