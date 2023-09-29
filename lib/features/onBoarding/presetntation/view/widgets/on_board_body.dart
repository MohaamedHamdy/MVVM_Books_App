// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_app_bar.dart';
import 'images_on_board.dart';

class OnBoardBody extends StatelessWidget {
  const OnBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Column(
          children: [
            CustomAppBar(
              index: index,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.0.w,
                top: 10.h,
              ),
              child: ImagesOnBoard(
                index: index,
              ),
            ),
          ],
        );
      },
    );
  }
}
