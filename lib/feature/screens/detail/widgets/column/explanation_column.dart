import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../product/utility/colors/colors.dart';
import '../../../../../product/utility/sizes/font_sizes.dart';
import '../button/detail_favourite_button.dart';
import '../button/detail_hand_button.dart';
import '../button/detail_voice_button.dart';

class ExplanationColumn extends StatelessWidget {
  const ExplanationColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
        Text(
          "Kalem",
          style: TextStyle(fontSize: FontSizes.font32, fontWeight: FontWeight.w700, color: ColorUtility.textHeading),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.h),
          child: Text(
            "Arapça kalem",
            style: TextStyle(
                fontSize: FontSizes.font14,
                fontWeight: FontWeight.w500,
                color: ColorUtility.textParagraph2,
                fontStyle: FontStyle.italic),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 24.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const DetailVoiceButton(),
                  Padding(
                    padding: EdgeInsets.only(left: 12.w),
                    child: const DetailFavouriteButton(),
                  )
                ],
              ),
              const DetailHandButton(),
            ],
          ),
        )
      ]),
    );
  }
}
