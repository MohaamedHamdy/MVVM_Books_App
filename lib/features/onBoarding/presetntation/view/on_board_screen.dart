import 'package:flutter/material.dart';

import 'widgets/on_board_body.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: OnBoardBody(),
      ),
    );
  }
}
