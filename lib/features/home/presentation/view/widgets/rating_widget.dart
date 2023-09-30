import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/core/utils/styles.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: List.generate(
            5,
            (index) => Padding(
              padding: EdgeInsets.only(right: 2.0.w),
              child: Icon(
                Icons.star,
                size: 10.sp,
                color: Colors.yellowAccent,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 8.0.w,
        ),
        Text(
          '(5.0)',
          style: Style.styles12.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
