import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/constants.dart';
import 'package:mvvm_books/core/utils/styles.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return index != 2
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (sliderindex) {
              return Container(
                margin: EdgeInsets.only(right: 8.w, bottom: 40.h),
                height: 6.h,
                width: sliderindex == index ? 37.w : 6.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: sliderindex == index ? kPrimaryColor : kGreyColor,
                ),
              );
            }),
          )
        : Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                minimumSize: const Size(230, 55),
                backgroundColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0.r),
                ),
              ),
              child: Text(
                'Get Started Now',
                style: Style.styles16.copyWith(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
  }
}
