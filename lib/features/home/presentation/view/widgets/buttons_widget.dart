import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/constants.dart';
import 'package:mvvm_books/core/utils/styles.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
