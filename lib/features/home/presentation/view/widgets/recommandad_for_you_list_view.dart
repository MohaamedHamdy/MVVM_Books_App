import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/features/home/presentation/view%20model/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:shimmer/shimmer.dart';
import 'recommandad_for_you_list_view_item.dart';

class RecommandedForYouListView extends StatelessWidget {
  const RecommandedForYouListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: 120.h,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              // physics: const NeverScrollableScrollPhysics(),
              itemCount: state.book.length,
              itemBuilder: (context, index) {
                return RecommandadForYouListItem(
                  imageUrl: state.book[index].volumeInfo.imageLinks == null
                      ? 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/1665px-No-Image-Placeholder.svg.png'
                      : state
                          .book[index].volumeInfo.imageLinks!.smallThumbnail!,
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return Text(state.errorMessage);
        } else {
          return Shimmer.fromColors(
            baseColor: Colors.white,
            highlightColor: Colors.grey.withOpacity(0.3),
            child: SizedBox(
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
                  }),
            ),
          );
        }
      },
    );
  }
}
