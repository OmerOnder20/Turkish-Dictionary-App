import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../product/navigator/app_router.dart';
import '../../../../../product/utility/assets/assets.dart';
import '../../../../../product/utility/colors/colors.dart';
import '../../../../../product/utility/sizes/font_sizes.dart';
import '../../../../../product/widgets/systemOverLayStyle/system_ui_overlay_style.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: 10.w, top: 10.h),
          child: IconButton(
            onPressed: () {
              context.router.navigate(const SearchRoute());
            },
            icon: SvgPicture.asset(
              AssetsUtility.largeLeftChevronIcon,
              height: 24.h,
              width: 24.w,
              // ignore: deprecated_member_use
              color: ColorUtility.titleColor,
            ),
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(top: 12.h),
          child: Text(
            "Kalem",
            style: TextStyle(
              fontSize: FontSizes.font14,
              fontWeight: FontWeight.w500,
              color: ColorUtility.titleColor,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w, top: 10.h),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AssetsUtility.moreIcon,
                height: 24.h,
                width: 24.w,
              ),
            ),
          )
        ],
        backgroundColor: ColorUtility.tdkPageBackground,
        elevation: 0,
        systemOverlayStyle: CustomSystemOverlay.lightSystemOverlay);
  }
}
