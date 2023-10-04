import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mvvm_books/features/home/data/models/book_model/book_model.dart';
import 'package:mvvm_books/features/home/presentation/view/widgets/buttons_widget.dart';

import 'book_info_column.dart';

class PobularBooksListItem extends StatelessWidget {
  const PobularBooksListItem({
    Key? key,
    required this.bookModel,
    required this.imageUrl,
    required this.title,
    required this.authorName,
    required this.review,
    required this.reviewCount,
    required this.price,
  }) : super(key: key);
  final BookModel bookModel;
  final String imageUrl;
  final String title;
  final String authorName;
  final String review;
  final String reviewCount;
  final String price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, AppRouter.kBookDetails);
      },
      child: Padding(
        padding: EdgeInsets.only(right: 16.w),
        child: Material(
          borderRadius: BorderRadius.circular(10.0.r),
          elevation: 3.0,
          child: Container(
            height: 100.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0.r),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 90.w,
                  child: CachedNetworkImage(imageUrl: imageUrl),
                ),
                SizedBox(
                  width: 4.w,
                ),
                BookInfoColumn(
                  title: title,
                  authorName: authorName,
                  review: review,
                  reviewCount: '1',
                  price: '\$0.0',
                ),
                ButtonsWidget(
                  isColumn: true,
                  bookModel: bookModel,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
