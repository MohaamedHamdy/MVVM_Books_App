import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/features/home/presentation/view/widgets/buttons_widget.dart';
import 'book_info_column.dart';

class PobularBooksListItem extends StatelessWidget {
  const PobularBooksListItem({super.key});

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
                Image.asset(
                  'assets/images/book.png',
                ),
                const BookInfoColumn(),
                const ButtonsWidget(
                  isColumn: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
