import 'package:flutter/material.dart';
import 'package:mvvm_books/core/utils/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Book of the week',
          style: Style.styles20,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                size: 36,
              ),
            ),
          ),
        ],
      ),
      // body: ,
    );
  }
}
