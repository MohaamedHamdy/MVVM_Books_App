// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mvvm_books/core/utils/router.dart';

class RecommandadForYouListItem extends StatelessWidget {
  const RecommandadForYouListItem({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRouter.kBookDetails);
      },
      child: Padding(
        padding: EdgeInsets.only(right: 5.0.w, left: 5.w),
        child: Container(
          width: 78.w,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                imageUrl,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
