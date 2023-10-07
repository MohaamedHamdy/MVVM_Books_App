// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mvvm_books/constants.dart';
import 'package:mvvm_books/core/utils/styles.dart';
import 'package:mvvm_books/features/home/data/models/book_model/book_model.dart';

class AuthorName extends StatelessWidget {
  const AuthorName({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Author',
          style: Style.styles12.copyWith(
            fontSize: 10.sp,
            color: kGreyColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          bookModel.volumeInfo.authors?[0] ?? 'No Author',
          style: Style.styles18.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(
          height: 2.0.h,
        ),
        Text(
          // 'Best Seller of New York Times',
          bookModel.volumeInfo.publisher ?? 'Not Known publisher',
          style: Style.styles12.copyWith(
            fontSize: 8.sp,
            color: kGreyColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
