import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/core/utils/styles.dart';

class TextSection extends StatelessWidget {
  const TextSection({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;
  static List titleText = [
    'Only Books Can Help You',
    'Think Smartly',
    'Books Has Power To Change Every Thing',
  ];

  static List bodyText = [
    'Books can help you to increase your knowledge and become more successfully.',
    'It\'s 2022 and it\'s time to learn every quickly and smartly. All books are storage in cloud and you can access all of them from your laptop or PC. ',
    'We have true friend in our life and the books is that. Book has power to chnage yourself and make you more valueable.',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 14.h, left: 20.w, right: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: Style.styles20,
              children: [
                TextSpan(
                  text: titleText[index],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 14.h,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: Style.styles12,
              children: [
                TextSpan(
                  text: bodyText[index],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
