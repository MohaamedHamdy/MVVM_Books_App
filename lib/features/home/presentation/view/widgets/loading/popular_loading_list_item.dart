import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/constants.dart';
import 'package:mvvm_books/core/utils/styles.dart';

class PopularBookLoadingListItem extends StatelessWidget {
  const PopularBookLoadingListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w, bottom: 10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 90.w,
            height: 120.h,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10.0.r),
            ),
          ),
          SizedBox(
            width: 4.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
              (index) => Container(
                width: 130.w,
                height: 10.h,
                margin: EdgeInsets.only(bottom: 8.0.h),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20.0.r),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
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
          ),
        ],
      ),
    );
  }
}
