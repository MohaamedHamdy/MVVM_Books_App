import 'package:flutter/material.dart';
import 'author_details.dart';
import 'book_detail_widget.dart';
import 'book_details_third_section.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Stack(
          children: [
            BookDetailWidget(),
            AuthorDetailsWidget(),
          ],
        ),
        BookDdetailsThirdSection(),
      ],
    );
  }
}