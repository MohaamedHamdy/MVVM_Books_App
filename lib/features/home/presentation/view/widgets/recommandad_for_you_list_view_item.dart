import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/core/utils/router.dart';

class RecommandadForYouListItem extends StatelessWidget {
  const RecommandadForYouListItem({
    super.key,
  });

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
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/book2.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
