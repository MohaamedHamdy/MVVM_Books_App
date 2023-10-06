// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mvvm_books/constants.dart';
import 'package:mvvm_books/core/utils/router.dart';
import 'package:mvvm_books/core/utils/styles.dart';
import 'package:mvvm_books/features/home/data/models/book_model/book_model.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({
    Key? key,
    required this.bookModel,
    this.isColumn = false,
  }) : super(key: key);
  final BookModel bookModel;
  final bool isColumn;

  @override
  Widget build(BuildContext context) {
    return !isColumn
        ? ButtonsRow(
            bookModel: bookModel,
          )
        : ButtonsColumn(
            bookModel: bookModel,
          );
  }
}

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  final BookModel bookModel;

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
          onPressed: () {
            Navigator.pushNamed(context, AppRouter.kBookDetails,
                arguments: bookModel);
          },
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

class ButtonsColumn extends StatelessWidget {
  const ButtonsColumn({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            minimumSize: Size(65.w, 28.h),
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
          onPressed: () {
            Navigator.pushNamed(context, AppRouter.kBookDetails,
                arguments: bookModel);
          },
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
