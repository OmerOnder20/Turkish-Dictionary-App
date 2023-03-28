// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utility/colors/colors.dart';
import '../../utility/sizes/font_sizes.dart';

class FullDividerColumnCard extends StatelessWidget {
  final double Rowheight;
  final double Rowwidth;
  final double dividerHeight;
  final String deyimAtasozuText;
  final String deyimAtasozuAciklama;

  const FullDividerColumnCard({
    Key? key,
    required this.Rowheight,
    required this.Rowwidth,
    required this.dividerHeight,
    required this.deyimAtasozuText,
    required this.deyimAtasozuAciklama,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 0,
      color: ColorUtility.bottomAppBar,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
      child: SizedBox(
        height: Rowheight,
        width: Rowwidth,
        child:
            Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(left: 12.w),
            child: Container(
              height: dividerHeight,
              width: 3.w,
              color: ColorUtility.dividerColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: SizedBox(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(deyimAtasozuText,
                        style: TextStyle(
                            fontSize: FontSizes.font18, fontWeight: FontWeight.w700, color: ColorUtility.textHeading)),
                    Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: Text(deyimAtasozuAciklama,
                          style: TextStyle(
                              fontSize: FontSizes.font12,
                              fontWeight: FontWeight.w400,
                              color: ColorUtility.textParagraph)),
                    ),
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
