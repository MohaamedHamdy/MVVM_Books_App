import 'package:flutter/material.dart';

class ImagesOnBoard extends StatelessWidget {
  const ImagesOnBoard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  static List images = [
    'assets/images/onBoard1.png',
    'assets/images/onBoard2.png',
    'assets/images/onBoard3.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 530,
      width: 400,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            images[index],
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
