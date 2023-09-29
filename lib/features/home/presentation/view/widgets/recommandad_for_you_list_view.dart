import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommandedForYouListView extends StatelessWidget {
  const RecommandedForYouListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: 12,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 10.0.w),
            child: Container(
              width: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/book2.png',
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
