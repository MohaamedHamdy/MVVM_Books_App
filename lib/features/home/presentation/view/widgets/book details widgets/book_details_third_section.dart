import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/constants.dart';
import 'package:mvvm_books/core/utils/styles.dart';

class BookDetailsThirdSection extends StatelessWidget {
  const BookDetailsThirdSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 28.0.w, right: 24.0.w, top: 20.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About The Book',
            style: Style.styles18.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10.0.h,
          ),
          Text(
            '\'The Psychology of Money\' is an essential read for anyone interested in being better with money. Fast-paced and engaging, this book will help you refine your thoughts towards money. You can finish this book in a week, unlike other books that are too lengthy. The most important emotions in relation to money are fear, guilt, shame and envy. It\'s worth spending some effort to become aware of the emotions that are especially tied to money for you because, without awareness, they will tend to override rational thinking and drive your actions.',
            style: Style.styles12.copyWith(color: kGreyColor),
          ),
          SizedBox(
            height: 14.0.h,
          ),
          const NewsWidget(),
        ],
      ),
    );
  }
}

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'News',
          style: Style.styles18.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 10.0.h,
        ),
        Image.asset('assets/images/news.png'),
      ],
    );
  }
}
