import 'package:flutter/material.dart';
import 'package:mvvm_books/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Skip',
              style: Style.styles16,
            ),
          ),
        ],
      ),
    );
  }
}
