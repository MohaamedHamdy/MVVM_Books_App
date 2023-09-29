import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 4.w,
      top: 43.h,
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.13,
          ),
          Text(
            'Book of the week',
            style: Style.styles20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.15,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              size: 32.sp,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
