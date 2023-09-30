import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/constants.dart';
import 'package:mvvm_books/core/utils/styles.dart';

class AuthorName extends StatelessWidget {
  const AuthorName({
    super.key,
  });

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
          'Morgan Housel',
          style: Style.styles18.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 2.0.h,
        ),
        Text(
          'Best Seller of New York Times',
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
