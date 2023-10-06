import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/features/home/data/models/book_model/book_model.dart';
import 'package:mvvm_books/features/home/data/models/book_model/volume_info.dart';

import '../buttons_widget.dart';

class BookOfTheWeekLoadingWidget extends StatelessWidget {
  const BookOfTheWeekLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.0.w),
      child: Material(
        elevation: 3.0,
        borderRadius: BorderRadius.circular(20.0.r),
        color: Colors.white,
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
                    const ButtonsRow(
                      bookModel: BookModel(volumeInfo: VolumeInfo()),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
