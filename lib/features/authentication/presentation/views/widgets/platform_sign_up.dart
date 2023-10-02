import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mvvm_books/constants.dart';

class PlatformsSignUpWidget extends StatelessWidget {
  const PlatformsSignUpWidget({
    super.key,
  });

  static List icons = [
    const Icon(
      Icons.apple,
    ),
    const Icon(
      Icons.facebook,
    ),
    const Icon(
      FontAwesomeIcons.google,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          icons.length,
          (index) => Padding(
            padding: EdgeInsets.only(right: 10.0.w),
            child: CircleAvatar(
              backgroundColor: kPrimaryColor,
              child: IconButton(
                onPressed: () {},
                icon: icons[index],
                color: Colors.white,
              ),
            ),
          ),
        ));
  }
}
