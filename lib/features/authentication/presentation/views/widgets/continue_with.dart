import 'package:flutter/material.dart';
import 'package:mvvm_books/constants.dart';
import 'package:mvvm_books/core/utils/styles.dart';

class ContinueWithWidget extends StatelessWidget {
  const ContinueWithWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 0.5,
          width: MediaQuery.of(context).size.width * 0.29,
          color: Colors.grey,
        ),
        Text(
          ' Or continue with ',
          style: Style.styles12
              .copyWith(color: kPrimaryColor, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 0.5,
          width: MediaQuery.of(context).size.width * 0.299,
          color: Colors.grey,
        ),
      ],
    );
  }
}
