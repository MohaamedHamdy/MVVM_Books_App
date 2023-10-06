import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/core/widgets/home_loading_screen.dart';
import 'package:shimmer/shimmer.dart';
import '../../view model/featured books cubit/featured_books_cubit.dart';
import 'popular_books_list_view_item.dart';

class PopularBooksListView extends StatelessWidget {
  const PopularBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: 300.h,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 5,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 8.0.h),
                  child: PobularBooksListItem(
                    bookModel: state.book[index],
                    imageUrl: state.book[index].volumeInfo.imageLinks == null
                        ? ''
                        : state.book[index].volumeInfo.imageLinks!.thumbnail!,
                    title: state.book[index].volumeInfo.title!,
                    authorName: state.book[index].volumeInfo.authors![0],
                    review: state.book[index].volumeInfo.maturityRating!,
                    reviewCount: '1',
                    price: '\$0.0',
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return Text(state.errorMessage);
        } else {
          // return Shimmer.fromColors(
          //   baseColor: Colors.white,
          //   highlightColor: Colors.grey,
          //   child: const PobularBooksListItem(
          //     bookModel: BookModel(volumeInfo: VolumeInfo()),
          //     imageUrl: '',
          //     title: '',
          //     authorName: '',
          //     review: '',
          //     reviewCount: '',
          //     price: '',
          //   ),
          // );
          return SizedBox(
            height: 300,
            width: double.infinity,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Shimmer.fromColors(
                    baseColor: Colors.white,
                    highlightColor: Colors.grey.withOpacity(0.3),
                    child: const PopularBookLoadingListItem());
              },
            ),
          );
          // return Shimmer.fromColors(
          //     baseColor: Colors.white,
          //     highlightColor: Colors.grey.withOpacity(0.3),
          //     child: const PopularLoading());
        }
      },
    );
  }
}
