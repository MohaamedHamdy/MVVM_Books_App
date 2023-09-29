import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'recommandad_for_you_list_view.dart';
import 'recommandad_for_you_slider.dart';

class RecommandadForYouPageBuilder extends StatefulWidget {
  const RecommandadForYouPageBuilder({
    super.key,
  });

  @override
  State<RecommandadForYouPageBuilder> createState() =>
      _RecommandadForYouPageBuilderState();
}

class _RecommandadForYouPageBuilderState
    extends State<RecommandadForYouPageBuilder> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120.h,
          child: PageView.builder(
            itemCount: 3,
            onPageChanged: (value) {
              setState(() {
                myIndex = value;
              });
            },
            itemBuilder: (context, index) {
              return const RecommandedForYouListView();
            },
          ),
        ),
        SizedBox(
          height: 2.0.h,
        ),
        RecommandadForYouSlider(myIndex: myIndex),
      ],
    );
  }
}
