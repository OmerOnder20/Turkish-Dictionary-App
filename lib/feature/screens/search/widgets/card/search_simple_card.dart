import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../product/utility/colors/colors.dart';
import '../../../../../product/utility/sizes/font_sizes.dart';

class SearchSimpleCard extends StatelessWidget {
  const SearchSimpleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 0,
      color: ColorUtility.bottomAppBar,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: Text("kalem",
                style: TextStyle(
                    fontSize: FontSizes.font16, fontWeight: FontWeight.w700, color: ColorUtility.textHeading)),
          ),
        ],
      ),
    );
  }
}
