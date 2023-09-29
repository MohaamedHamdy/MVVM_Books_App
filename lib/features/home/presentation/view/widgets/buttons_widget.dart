// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mvvm_books/constants.dart';
import 'package:mvvm_books/core/utils/styles.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({
    Key? key,
    this.isColumn = false,
  }) : super(key: key);

  final bool isColumn;

  @override
  Widget build(BuildContext context) {
    return !isColumn
        ? Row(
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  minimumSize: Size(87.w, 26.h),
                  backgroundColor: kPrimaryColor,
                ),
                child: Text(
                  'Grab Now',
                  style: Style.styles12.copyWith(
                    color: Colors.white,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 6.w,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Learn More',
                  style: Style.styles12.copyWith(
                    color: Colors.black,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  minimumSize: Size(65.w, 28.h),
                  backgroundColor: kPrimaryColor,
                ),
                child: Text(
                  'Grab Now',
                  style: Style.styles12.copyWith(
                    color: Colors.white,
                    fontSize: 8.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Learn More',
                  style: Style.styles12.copyWith(
                    color: Colors.black,
                    fontSize: 8.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
  }
}
