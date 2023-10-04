// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/features/home/presentation/view%20model/featured%20books%20cubit/featured_books_cubit.dart';
import 'loading/book_of_the_week_loading.dart';
import 'right_section_of_book_of_the_week.dart';

class BookOfTheWeekWidget extends StatelessWidget {
  const BookOfTheWeekWidget({
    Key? key,
    this.isBookDetailPage = false,
  }) : super(key: key);

  final bool isBookDetailPage;
  static final random = Random();
  static final randomId = random.nextInt(10);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return GestureDetector(
            onTap: () {
              // Navigator.pushNamed(context, AppRouter.kBookDetails);
            },
            child: Padding(
              padding: EdgeInsets.only(right: 16.0.w),
              child: Material(
                borderRadius: BorderRadius.circular(20.0.r),
                elevation: !isBookDetailPage ? 3.0 : 0.0,
                color: !isBookDetailPage ? Colors.white : Colors.transparent,
                child: Container(
                  width: double.infinity,
                  height: !isBookDetailPage ? 160.h : 190.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0.r),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100.w,
                        height: 140.h,
                        child: CachedNetworkImage(
                          imageUrl:
                              state.book[randomId].volumeInfo.imageLinks == null
                                  ? ''
                                  : state.book[randomId].volumeInfo.imageLinks!
                                      .thumbnail!,
                        ),
                      ),
                      SizedBox(
                        width: 10.0.w,
                      ),
                      RightSection(
                        isBookDetailPage: isBookDetailPage,
                        title:
                            state.book[randomId].volumeInfo.title ?? 'No title',
                        description:
                            state.book[randomId].volumeInfo.description ??
                                'no Description',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return Text(state.errorMessage);
        } else {
          return const BookOfTheWeekLoadingWidget();
        }
      },
    );
  }
}
