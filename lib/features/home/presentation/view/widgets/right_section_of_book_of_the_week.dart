// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mvvm_books/constants.dart';
import 'package:mvvm_books/core/utils/styles.dart';
import 'package:mvvm_books/features/home/data/models/book_model/book_model.dart';

import 'buttons_widget.dart';

class RightSection extends StatelessWidget {
  const RightSection({
    Key? key,
    required this.bookModel,
    required this.title,
    required this.description,
  }) : super(key: key);
  final BookModel bookModel;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 200.w,
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: Style.styles16.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            width: 180.w,
            height: 50.h,
            child: Text(
              description,
              style: Style.styles12.copyWith(
                fontSize: 9.sp,
                color: kGreyColor,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 7,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          ButtonsWidget(
            bookModel: bookModel,
          )
        ],
      ),
    );
  }
}
