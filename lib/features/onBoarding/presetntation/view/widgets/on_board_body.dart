import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_app_bar.dart';
import 'images_on_board.dart';
import 'slider_widget.dart';
import 'text_section.dart';

class OnBoardBody extends StatefulWidget {
  const OnBoardBody({super.key});

  @override
  State<OnBoardBody> createState() => _OnBoardBodyState();
}

class _OnBoardBodyState extends State<OnBoardBody> {
  final PageController _pageController = PageController(initialPage: 0);
  final int _totalPages = 3;
  final Duration _autoScrollDuration = const Duration(seconds: 5);
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _stopAutoScroll();
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(
      _autoScrollDuration,
      (_) {
        final nextPage = (_pageController.page!.toInt() + 1) % _totalPages;
        nextPage != 0
            ? _pageController.animateToPage(
                nextPage,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              )
            : null;
      },
    );
  }

  void _stopAutoScroll() {
    _timer?.cancel();
    _timer = null;
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Column(
          children: [
            CustomAppBar(
              index: index,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.0.w,
                top: 10.h,
              ),
              child: ImagesOnBoard(
                index: index,
              ),
            ),
            TextSection(
              index: index,
            ),
            const Spacer(),
            SliderWidget(index: index),
          ],
        );
      },
    );
  }
}
