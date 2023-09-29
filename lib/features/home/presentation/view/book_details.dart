import 'package:flutter/material.dart';
import 'package:mvvm_books/features/home/presentation/view/widgets/book%20details%20widgets/book_details_body.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 34,
            ),
          ),
        ],
      ),
      body: const BookDetailsBody(),
    );
  }
}
