import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tdk_app/product/navigator/app_router.dart';

import '../../../../product/utility/assets/assets.dart';
import '../../../../product/utility/colors/colors.dart';
import '../../../../product/utility/sizes/font_sizes.dart';
import '../../../../product/widgets/systemOverLayStyle/system_ui_overlay_style.dart';
import '../widgets/column/explanation_column.dart';
import '../widgets/listviewbuilder/detail_explanation_list_view_builder.dart';
import '../widgets/listviewbuilder/detail_list_view_builder.dart';

class SearchDetailView extends StatefulWidget {
  const SearchDetailView({super.key});

  @override
  State<SearchDetailView> createState() => _SearchDetailViewState();
}

class _SearchDetailViewState extends State<SearchDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(preferredSize: Size.fromHeight(60.h), child: const DetailAppBar()),
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
              top: 16.h,
            ),
            child: Column(
              children: [
                DetailExplanation(
                  onPressed1: () {},
                  onPressed2: () {},
                  onPressed3: () {},
                ),
                Padding(
                  padding: EdgeInsets.only(top: 32.h),
                  child: const ExplanationColumn(),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16.w, left: 16.w, top: 32.h),
                  child: const DetailCardListViewBuilder(),
                )
              ],
            ),
          ),
        ])));
  }
}

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
