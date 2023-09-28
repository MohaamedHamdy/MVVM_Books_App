import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mvvm_books/core/utils/styles.dart';

import 'widgets/on_board_body.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: () {},
      //     icon: const Opacity(
      //       opacity: 0.8,
      //       child: Icon(
      //         FontAwesomeIcons.arrowLeftLong,
      //       ),
      //     ),
      //   ),
      //   actions: const [
      //     Text(
      //       'Skip',
      //       style: Style.styles14,
      //     ),
      //   ],
      // ),
      body: OnBoardBody(),
    );
  }
}
