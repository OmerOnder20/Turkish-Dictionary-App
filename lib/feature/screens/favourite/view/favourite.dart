import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tdk_app/product/utility/constants/string_constants.dart';
import '../../../../product/utility/assets/assets.dart';
import '../../../../product/utility/colors/colors.dart';
import '../../../../product/utility/sizes/font_sizes.dart';
import '../../../../product/widgets/systemOverLayStyle/system_ui_overlay_style.dart';

class FavouriteView extends StatefulWidget {
  const FavouriteView({super.key});

  @override
  State<FavouriteView> createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(60.h), child: const FavouriteAppBar()),
      backgroundColor: ColorUtility.tdkPageBackground,
      body: const NoDataFavColumn(),

      // body: const NoDataFavColumn(),
    );
  }
}

class NoDataFavColumn extends StatelessWidget {
  const NoDataFavColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 85.h,
        width: 128.w,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 48.h,
                width: 48.w,
                child: SvgPicture.asset(
                  AssetsUtility.largeFavouriteIcon,
                  color: ColorUtility.noDataIconColor,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                StringConstants.favouriteNoData,
                style: TextStyle(
                    fontSize: FontSizes.font14, fontWeight: FontWeight.w600, color: ColorUtility.textParagraph),
              ),
            ]),
      ),
    );
  }
}

class FavouriteAppBar extends StatelessWidget {
  const FavouriteAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.only(top: 12.h),
          child: Text(
            StringConstants.favouriteTitle,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: ColorUtility.titleColor,
            ),
          ),
        ),
        backgroundColor: ColorUtility.tdkPageBackground,
        elevation: 0,
        systemOverlayStyle: CustomSystemOverlay.lightSystemOverlay);
  }
}
