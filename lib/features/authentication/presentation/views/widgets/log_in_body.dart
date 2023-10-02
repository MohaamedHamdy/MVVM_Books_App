// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mvvm_books/constants.dart';
import 'package:mvvm_books/core/utils/router.dart';
import 'package:mvvm_books/core/utils/styles.dart';

import 'continue_with.dart';
import 'custom_login_text_field.dart';
import 'platform_sign_up.dart';

class LogInBody extends StatelessWidget {
  const LogInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.0.h, horizontal: 24.0.w),
      child: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
          ),

          // it will cause a problem in colors as they are same textField when they click on both at same time
          // its easy but later :DDD

          const CustomLogInTextField(
            icon: Icons.email_outlined,
            labelText: 'Email Address',
          ),
          SizedBox(
            height: 20.h,
          ),
          const CustomLogInTextField(
            icon: Icons.lock_outline,
            labelText: 'Password',
            suffixIcon: Icons.visibility_off_outlined,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Forget your password?',
                style: Style.styles16.copyWith(
                  fontSize: 12.sp,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRouter.kHomeScreen);
            },
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0.r),
              ),
              minimumSize: Size(MediaQuery.of(context).size.width * 0.6, 40.h),
            ),
            child: Text(
              'Sign in',
              style: Style.styles16.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
              ),
            ),
          ),
          SizedBox(
            height: 10.0.h,
          ),
          const ContinueWithWidget(),
          SizedBox(
            height: 20.0.h,
          ),
          const PlatformsSignUpWidget(),
          SizedBox(
            height: 60.0.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account yet?',
                style: Style.styles16.copyWith(fontSize: 14.sp),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Sign up',
                  style: Style.styles16.copyWith(
                      color: kPrimaryColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
