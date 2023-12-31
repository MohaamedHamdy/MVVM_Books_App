import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/core/utils/styles.dart';
import 'package:mvvm_books/features/home/data/models/book_model/book_model.dart';
import 'package:mvvm_books/features/home/data/models/book_model/volume_info.dart';
import 'package:mvvm_books/features/home/presentation/view/widgets/buttons_widget.dart';

/* this is mainly a draft screen was made to be the whole 
 * home loading screen at loading state but it just doesn't 
 * make sense to it just existed to see what every wiget should look like 
 * so no CLEAN CODE HERE :DDDDD
 */

class HomeLoadingScreen extends StatelessWidget {
  const HomeLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              elevation: 3.0,
              borderRadius: BorderRadius.circular(20.0.r),
              color: Colors.white,
              child: SizedBox(
                width: double.infinity,
                height: 160.h,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0.w),
                      child: Container(
                        width: 100.w,
                        height: 140.h,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20.0.r),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 140.w,
                            height: 8.h,
                            margin: EdgeInsets.only(bottom: 10.0.h),
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20.0.r),
                            ),
                          ),
                          Column(
                            children: List.generate(
                              4,
                              (index) => Container(
                                width: 200.w,
                                height: 10.h,
                                margin: EdgeInsets.only(bottom: 8.0.h),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(20.0.r),
                                ),
                              ),
                            ),
                          ),
                          const ButtonsRow(
                            bookModel: BookModel(volumeInfo: VolumeInfo()),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 14.h,
            ),
            Text(
              'Recommanded for you',
              style: Style.styles20,
            ),
            SizedBox(
              height: 6.h,
            ),
            SizedBox(
              height: 120.0.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, state) {
                  return Container(
                    width: 78.h,
                    margin: EdgeInsets.only(right: 5.0.w, left: 5.w),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10.0.r),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
