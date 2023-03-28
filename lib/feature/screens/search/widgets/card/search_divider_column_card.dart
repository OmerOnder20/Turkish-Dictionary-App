import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tdk_app/product/navigator/app_router.dart';
import 'package:tdk_app/product/utility/colors/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../product/utility/sizes/font_sizes.dart';
import '../../../../../product/widgets/card/full_divider_column_card.dart';

class SearchDividerColumnCard extends StatefulWidget {
  const SearchDividerColumnCard({super.key});

  @override
  State<SearchDividerColumnCard> createState() => _SearchDividerColumnCardState();
}

class _SearchDividerColumnCardState extends State<SearchDividerColumnCard> {
  final String deyimAtasozuText = "on para";

  final String deyimAtasozuAciklama = "çok az (para).";

  final String titleText = "Bir Kelime";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: Text(
            titleText,
            style: TextStyle(
              fontSize: FontSizes.font12,
              fontWeight: FontWeight.w500,
              color: ColorUtility.textParagraph2,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.h),
          child: InkWell(
            onTap: () {
              context.router.navigate(const SearchDetailRoute());
            },
            child: SizedBox(
              height: 72.h,
              child: FullDividerColumnCard(
                dividerHeight: 40.h,
                deyimAtasozuText: deyimAtasozuText,
                deyimAtasozuAciklama: deyimAtasozuAciklama,
                Rowheight: 70.h,
                Rowwidth: MediaQuery.of(context).size.width * 0.91,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
