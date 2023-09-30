import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/constants.dart';
import 'package:mvvm_books/core/utils/styles.dart';

import 'buttons_widget.dart';
import 'rating_widget.dart';

class RightSection extends StatelessWidget {
  const RightSection({
    Key? key,
    required this.isBookDetailPage,
  }) : super(key: key);

  final bool isBookDetailPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'The Psychology of Money',
            style: Style.styles16.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: !isBookDetailPage ? Colors.black : Colors.white,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            width: !isBookDetailPage ? 180.w : 200.w,
            child: Text(
              'The psychology of money is the study of our behavior with money. Success with money isn\'t about knowledge, IQ or how good you are at math. It\'s about behavior, and everyone is prone to certain behaviors over others.',
              style: Style.styles12.copyWith(
                fontSize: 9.sp,
                color: kGreyColor,
                fontWeight: FontWeight.w600,
              ),
              maxLines: !isBookDetailPage ? 7 : 12,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          !isBookDetailPage ? const ButtonsWidget() : const RatingWidget(),
        ],
      ),
    );
  }
}
