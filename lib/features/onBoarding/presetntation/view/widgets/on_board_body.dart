import 'package:flutter/material.dart';
import 'custom_app_bar.dart';

class OnBoardBody extends StatelessWidget {
  const OnBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(itemBuilder: (context, index) {
      return const Column(
        children: [
          CustomAppBar(),
        ],
      );
    });
  }
}
