import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/constants.dart';
import 'package:mvvm_books/core/utils/styles.dart';

class BookOfTheWeekLoadingWidget extends StatelessWidget {
  const BookOfTheWeekLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.0.w),
      child: SizedBox(
        width: double.infinity,
        height: 160.h,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8.0.w),
              child: Container(
                width: 100.w,
                height: 140.h,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20.0.r),
                ),
              ),
            ),
            SizedBox(
              width: 10.0.w,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 140.w,
                    height: 8.h,
                    margin: EdgeInsets.only(bottom: 10.0.h),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20.0.r),
                    ),
                  ),
                  Column(
                    children: List.generate(
                      4,
                      (index) => Container(
                        width: 200.w,
                        height: 10.h,
                        margin: EdgeInsets.only(bottom: 8.0.h),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20.0.r),
                        ),
                      ),
                    ),
                  ),
                  Row(
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PopularLoading extends StatelessWidget {
  const PopularLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.0.w),
          child: Container(
            width: 90.w,
            height: 140.h,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10.0.r),
            ),
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
              width: 140.w,
              height: 10.h,
              margin: EdgeInsets.only(bottom: 8.0.h),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20.0.r),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
