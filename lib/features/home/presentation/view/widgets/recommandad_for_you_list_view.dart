import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/features/home/presentation/view%20model/featured%20books%20cubit/featured_books_cubit.dart';
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
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
