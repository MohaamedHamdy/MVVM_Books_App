import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/features/home/data/models/book_model/book_model.dart';

import '../book_of_the_week.dart';

class BookDetailWidget extends StatelessWidget {
  const BookDetailWidget({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.37,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(23, 27, 54, 1),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.r),
            bottomRight: Radius.circular(20.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 76.0.h),
          child: const BookOfTheWeekWidget(
            isBookDetailPage: true,
          ),
        ),
      ),
    );
  }
}
