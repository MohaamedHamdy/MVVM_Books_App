// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mvvm_books/constants.dart';
import 'package:mvvm_books/core/utils/styles.dart';
import 'package:mvvm_books/features/home/data/models/book_model/book_model.dart';

class BookDetailsThirdSection extends StatelessWidget {
  const BookDetailsThirdSection({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  final BookModel bookModel;
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
          SizedBox(
            height: 320.h,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Text(
                bookModel.volumeInfo.description!,
                style: Style.styles12.copyWith(color: kGreyColor),
              ),
            ),
          ),
          SizedBox(
            height: 14.0.h,
          ),
          // const NewsWidget(),
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
