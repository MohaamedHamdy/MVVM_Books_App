// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:mvvm_books/features/home/data/models/book_model/book_model.dart';

import 'author_details.dart';
import 'book_detail_widget.dart';
import 'book_details_third_section.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            BookDetailWidget(
              bookModel: bookModel,
            ),
            const AuthorDetailsWidget(),
          ],
        ),
        BookDetailsThirdSection(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
