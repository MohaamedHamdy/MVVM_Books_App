import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/constants.dart';

class RecommandadForYouSlider extends StatelessWidget {
  const RecommandadForYouSlider({
    super.key,
    required this.myIndex,
  });

  final int myIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (sliderIndex) => Container(
          height: 12.h,
          width: 12.w,
          margin: EdgeInsets.only(right: 6.w),
          child: Material(
            elevation: 1.0,
            color: sliderIndex == myIndex ? kPrimaryColor : Colors.white,
            shape: const CircleBorder(),
          ),
        ),
      ),
    );
  }
}
