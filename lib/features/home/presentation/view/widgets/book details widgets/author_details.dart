import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mvvm_books/constants.dart';
import 'package:mvvm_books/features/home/data/models/book_model/book_model.dart';

import 'author_name.dart';

class AuthorDetailsWidget extends StatelessWidget {
  const AuthorDetailsWidget({
    Key? key,
    required this.bookModel,
  }) : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.314,
        ),
        child: SizedBox(
          height: 78.h,
          width: 300.w,
          child: Material(
            elevation: 3.0,
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0.r),
            child: Padding(
              padding: EdgeInsets.only(left: 20.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10.0.w,
                  ),
                  AuthorName(
                    bookModel: bookModel,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: kGreyColor,
                      size: 20.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
