import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../product/utility/colors/colors.dart';
import '../../../../../product/utility/sizes/font_sizes.dart';

class SearchLetterListViewBuilder extends StatefulWidget {
  const SearchLetterListViewBuilder({super.key});

  @override
  State<SearchLetterListViewBuilder> createState() => _SearchLetterListViewBuilderState();
}

class _SearchLetterListViewBuilderState extends State<SearchLetterListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48.h,
      color: ColorUtility.newColor,
      child: Padding(
        padding: EdgeInsets.only(left: 19.w),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 15.h,
                width: 9.w,
                child: TextButton(
                    style: TextButton.styleFrom(minimumSize: Size.zero, padding: EdgeInsets.zero),
                    onPressed: () {},
                    child: Text(
                      "ç",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: FontSizes.font14, color: ColorUtility.textParagraph),
                    )),
              );
            },
            separatorBuilder: (context, index) {
              return Padding(padding: EdgeInsets.only(left: 32.w));
            },
            itemCount: 15),
      ),
    );
  }
}
