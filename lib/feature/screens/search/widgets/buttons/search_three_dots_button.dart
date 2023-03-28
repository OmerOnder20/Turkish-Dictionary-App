import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tdk_app/feature/screens/search/widgets/buttons/search_about_button.dart';
import 'package:tdk_app/feature/screens/search/widgets/buttons/search_communication_button.dart';
import 'package:tdk_app/product/utility/colors/colors.dart';

import '../../../../../product/utility/assets/assets.dart';

class SearchMoreHorizIconButton extends StatelessWidget {
  const SearchMoreHorizIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(15.r))),
          isScrollControlled: true,
          useRootNavigator: true,
          context: context,
          backgroundColor: ColorUtility.bottomAppBar,
          builder: (context) {
            return SizedBox(
                height: 450.h,
                width: double.infinity,
                child: Column(children: [
                  SizedBox(
                    height: 186.h,
                    width: double.infinity,
                    child: Stack(alignment: AlignmentDirectional.topCenter, children: [
                      Container(
                          height: 186.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(15.r)),
                              image: const DecorationImage(
                                  fit: BoxFit.cover, image: AssetImage(AssetsUtility.tdkBackGround)))),
                      Padding(
                        padding: EdgeInsets.only(top: 58.h),
                        child: SizedBox(
                          height: 40.h,
                          width: 85.83.w,
                          child: SvgPicture.asset(
                            AssetsUtility.tdkLogo,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 122.h),
                        child: SizedBox(
                          width: 184.w,
                          height: 40.h,
                          child: SvgPicture.asset(
                            AssetsUtility.tdkVersion,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 158.w),
                        child: Container(
                          height: 4.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorUtility.bottomSheetDividerColor,
                            borderRadius: BorderRadius.circular(14.r),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 32.h),
                    child: Column(
                      children: [
                        const SearchAboutButton(),
                        Padding(
                          padding: EdgeInsets.only(top: 16.h),
                          child: const SearchCommunicationButton(),
                        )
                      ],
                    ),
                  ),
                ]));
          },
        );
      },
      child: SvgPicture.asset(
        AssetsUtility.moreIcon,
        height: 24.h,
        width: 24.w,
        color: ColorUtility.bottomAppBar,
        fit: BoxFit.cover,
      ),
    );
  }
}
