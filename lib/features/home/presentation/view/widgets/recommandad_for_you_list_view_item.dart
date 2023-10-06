// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mvvm_books/core/utils/router.dart';
import 'package:mvvm_books/features/home/data/models/book_model/book_model.dart';

class RecommandadForYouListItem extends StatelessWidget {
  const RecommandadForYouListItem({
    Key? key,
    required this.imageUrl,
    required this.bookModel,
  }) : super(key: key);
  final String imageUrl;
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRouter.kBookDetails,
            arguments: bookModel);
      },
      child: Padding(
        padding: EdgeInsets.only(right: 5.0.w, left: 5.w),
        child: SizedBox(
          width: 78.w,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
          ),
        ),
      ),
    );
  }
}
