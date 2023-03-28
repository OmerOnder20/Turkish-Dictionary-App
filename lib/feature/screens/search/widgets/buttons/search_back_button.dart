import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tdk_app/product/utility/assets/assets.dart';

import '../../../../../product/utility/colors/colors.dart';

class SearchBackButton extends StatefulWidget {
  const SearchBackButton({super.key});

  @override
  State<SearchBackButton> createState() => _SearchBackButtonState();
}

class _SearchBackButtonState extends State<SearchBackButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 40.w,
      decoration: const BoxDecoration(color: ColorUtility.tdkSecondaryButton, shape: BoxShape.circle),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: SizedBox(
            height: 20.h,
            width: 20.h,
            child: SvgPicture.asset(
              AssetsUtility.smallLeftChevronIcon,
              fit: BoxFit.scaleDown,
              color: ColorUtility.textParagraph,
            )),
      ),
    );
  }
}
