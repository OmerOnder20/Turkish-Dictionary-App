import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../product/utility/assets/assets.dart';
import '../../../../product/utility/colors/colors.dart';
import '../../../../product/utility/constants/string_constants.dart';
import '../../../../product/utility/sizes/font_sizes.dart';
import '../../../../product/widgets/systemOverLayStyle/system_ui_overlay_style.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({super.key});

  @override
  State<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(60.h), child: const HistoryAppBar()),
      backgroundColor: ColorUtility.tdkPageBackground,
      body: const NoDataHisColumn(),
    );
  }
}

class NoDataHisColumn extends StatelessWidget {
  const NoDataHisColumn({
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
                  AssetsUtility.largeHistoryIcon,
                  color: ColorUtility.noDataIconColor,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                StringConstants.historyNoData,
                style: TextStyle(
                    fontSize: FontSizes.font14, fontWeight: FontWeight.w600, color: ColorUtility.textParagraph),
              )
            ]),
      ),
    );
  }
}

class HistoryAppBar extends StatelessWidget {
  const HistoryAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.only(top: 12.h),
          child: Text(
            StringConstants.historyTitle,
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
