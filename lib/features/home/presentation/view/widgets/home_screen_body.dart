import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/core/utils/styles.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   margin: EdgeInsets.only(bottom: 250.h),
    //   alignment: Alignment.topCenter,
    //   decoration: const BoxDecoration(
    //     image: DecorationImage(
    //       image: AssetImage('assets/images/Vector1.png'),
    //     ),
    //   ),
    //   child: Padding(
    //     padding: EdgeInsets.only(top: 100.h, left: 20.h, right: 20.h),
    //     child: Column(
    //       children: [],
    //     ),
    //   ),
    // );
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Stack(
        children: [
          Positioned(
            left: 8.w,
            top: 43.h,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.13,
                ),
                Text(
                  'Book of the week',
                  style: Style.styles20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.15,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    size: 34,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
