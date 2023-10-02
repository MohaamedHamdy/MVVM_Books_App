import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/constants.dart';

class PlatformsSignUpWidget extends StatelessWidget {
  const PlatformsSignUpWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: kPrimaryColor,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.apple_sharp,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          width: 12.0.w,
        ),
        CircleAvatar(
          backgroundColor: kPrimaryColor,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.facebook,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          width: 12.0.w,
        ),
        CircleAvatar(
          backgroundColor: kPrimaryColor,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.apple_sharp,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
