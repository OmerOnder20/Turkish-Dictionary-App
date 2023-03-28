import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tdk_app/feature/screens/search/widgets/buttons/search_back_button.dart';
import 'package:tdk_app/product/utility/assets/assets.dart';
import 'package:tdk_app/product/widgets/buttons/full_bottom_sheet_bar_button.dart';

import '../../../../../product/utility/colors/colors.dart';
import '../../../../../product/utility/constants/string_constants.dart';
import '../../../../../product/utility/sizes/font_sizes.dart';

class SearchAboutButton extends StatefulWidget {
  const SearchAboutButton({super.key});

  @override
  State<SearchAboutButton> createState() => _SearchAboutButtonState();
}

class _SearchAboutButtonState extends State<SearchAboutButton> {
  @override
  Widget build(BuildContext context) {
    return FullBottomSheetBarButton(
      height: 48.h,
      width: double.infinity,
      text: StringConstants.hakkindaText,
      onTap: () {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(15.r))),
          isScrollControlled: true,
          useRootNavigator: true,
          backgroundColor: ColorUtility.bottomAppBar,
          context: context,
          builder: (context) {
            return SizedBox(
              height: 450.h,
              width: double.infinity,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 16.h,
                        right: 158.w,
                        left: 158.w,
                      ),
                      child: Center(
                        child: Container(
                          height: 4.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorUtility.dividerColor,
                            borderRadius: BorderRadius.circular(14.r),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24.w, top: 32.h),
                      child: SizedBox(
                        height: 40.h,
                        width: 258.w,
                        child: Row(children: [
                          const SearchBackButton(),
                          Padding(
                            padding: EdgeInsets.only(left: 94.w),
                            child: Text(StringConstants.hakkindaText,
                                style: TextStyle(
                                  color: ColorUtility.textHeading,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.2,
                                )),
                          )
                        ]),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 48.h),
                      child: Center(
                        child: SizedBox(
                            height: 32.h,
                            width: 68.6.w,
                            child: SvgPicture.asset(
                              AssetsUtility.tdkLogo,
                              color: ColorUtility.tdkMain,
                              fit: BoxFit.fill,
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 41.w),
                      child: Center(
                          child: SizedBox(
                        height: 110,
                        child: Text(
                          StringConstants.hakkindaExplanationText,
                          textAlign: TextAlign.center,
                          maxLines: 5,
                          style: TextStyle(
                            wordSpacing: 5,
                            fontSize: FontSizes.font14,
                            fontWeight: FontWeight.w500,
                            color: ColorUtility.bottomSheetTextColor,
                          ),
                        ),
                      )),
                    )
                  ]),
            );
          },
        );
      },
    );
  }
}
