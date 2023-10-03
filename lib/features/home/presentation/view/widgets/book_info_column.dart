// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mvvm_books/core/utils/styles.dart';

class BookInfoColumn extends StatelessWidget {
  const BookInfoColumn({
    Key? key,
    required this.title,
    required this.authorName,
    required this.review,
    required this.reviewCount,
    required this.price,
  }) : super(key: key);
  final String title;
  final String authorName;
  final String review;
  final String reviewCount;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 160.w,
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Style.styles12.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          SizedBox(
            height: 4.0.h,
          ),
          Text(
            authorName,
            style: Style.styles12.copyWith(
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 4.0.h,
          ),
          Row(
            children: [
              Text(
                '5',
                style: Style.styles12.copyWith(
                  color: const Color.fromRGBO(242, 79, 9, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                ' | Based on $reviewCount reviews',
                style: Style.styles12.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4.0.h,
          ),
          Text(
            price,
            style: Style.styles12.copyWith(
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
