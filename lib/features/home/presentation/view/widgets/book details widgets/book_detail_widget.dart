// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/constants.dart';
import 'package:mvvm_books/core/utils/styles.dart';

import 'package:mvvm_books/features/home/data/models/book_model/book_model.dart';
import 'package:mvvm_books/features/home/presentation/view/widgets/rating_widget.dart';

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
          child: BookInfoInBookDetails(
            bookModel: bookModel,
          ),
        ),
      ),
    );
  }
}

class BookInfoInBookDetails extends StatelessWidget {
  const BookInfoInBookDetails({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.0.w, left: 10.w, bottom: 20.h),
      child: Material(
        borderRadius: BorderRadius.circular(20.0.r),
        color: Colors.transparent,
        child: SizedBox(
          width: double.infinity,
          height: 190.h,
          child: Padding(
            padding: EdgeInsets.only(left: 10.0.w),
            child: Row(
              children: [
                SizedBox(
                  width: 100.w,
                  height: 140.h,
                  child: CachedNetworkImage(
                      imageUrl: bookModel.volumeInfo.imageLinks == null
                          ? ''
                          : bookModel.volumeInfo.imageLinks!.thumbnail!),
                ),
                SizedBox(
                  width: 10.0.w,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200.w,
                        child: Text(
                          bookModel.volumeInfo.title!,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: Style.styles16.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      SizedBox(
                        width: 200.w,
                        height: 60.h,
                        child: Text(
                          bookModel.volumeInfo.description!,
                          style: Style.styles12.copyWith(
                            fontSize: 9.sp,
                            color: kGreyColor,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 12,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      const RatingWidget(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
