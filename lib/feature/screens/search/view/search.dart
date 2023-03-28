import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tdk_app/feature/screens/search/widgets/card/search_simple_card.dart';
import 'package:tdk_app/feature/screens/search/widgets/textfield/search_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../product/utility/assets/assets.dart';
import '../../../../product/utility/colors/colors.dart';
import '../../../../product/utility/constants/string_constants.dart';
import '../widgets/listviewbuilder/search_letter_list_view_builder.dart';
import '../widgets/buttons/search_three_dots_button.dart';
import '../widgets/card/search_divider_column_card.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  double tdkBackgroundHeight = 279;

  bool _isVisible = true;
  bool _isDetailVisible = false;

  EdgeInsetsGeometry textFieldPadding = const EdgeInsets.only(
    top: 255,
  );
  Color appBarStatusColor = ColorUtility.tdkMain;
  Brightness appBarStatusBarBrightness = Brightness.light;

  void buttonOnPressed() {
    setState(() {
      _isDetailVisible = false;
      _isVisible = true;
      tdkBackgroundHeight = 279;
      textFieldPadding = const EdgeInsets.only(
        top: 255,
      );
      appBarStatusColor = ColorUtility.tdkMain;
      appBarStatusBarBrightness = Brightness.light;
    });
  }

  void buttonOnTap() {
    setState(() {
      _isDetailVisible = true;
      _isVisible = false;
      tdkBackgroundHeight = 0;
      textFieldPadding = EdgeInsets.only(top: 16.h);
      appBarStatusColor = ColorUtility.tdkPageBackground;
      appBarStatusBarBrightness = Brightness.dark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: TdkAppBar(appBarStatusColor: appBarStatusColor, appBarStatusBarBrightness: appBarStatusBarBrightness)),
      backgroundColor: ColorUtility.tdkPageBackground,
      body: SizedBox(
        width: 375.w,
        height: 812.h,
        child: Stack(children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            height: tdkBackgroundHeight,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(AssetsUtility.tdkBackGround), fit: BoxFit.cover)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 16.w, top: 15.h),
                    child: const SearchMoreHorizIconButton(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 93.h),
                    child: const TdkSvgLogo(),
                  ),
                ],
              ),
            ),
          ),
          AnimatedPadding(
            duration: const Duration(milliseconds: 700),
            curve: Curves.fastOutSlowIn,
            padding: textFieldPadding,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: SearchTextField(
                      onChanged: () {},
                      buttonOnPressed: buttonOnPressed,
                      onTap: buttonOnTap,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: _isVisible,
            child: Padding(
              padding: const EdgeInsets.only(top: 353),
              child: SizedBox(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SearchDividerColumnCard(),
                      Padding(
                        padding: EdgeInsets.only(top: 40.h),
                        child: const SearchDividerColumnCard(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: _isDetailVisible,
            child: Padding(
              padding: EdgeInsets.only(top: 152.h),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SearchText(),
                      Padding(
                        padding: EdgeInsets.only(top: 12.h),
                        child: const SearchListViewBuilder(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Visibility(
              visible: _isDetailVisible,
              child: Padding(
                padding: EdgeInsets.only(top: 80.h),
                child: const SearchLetterListViewBuilder(),
              ))
        ]),
      ),
    );
  }

  Text SearchText() {
    return Text(
      StringConstants.sonAramalarText,
      style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600, color: ColorUtility.textParagraph2),
    );
  }
}

class SearchListViewBuilder extends StatelessWidget {
  const SearchListViewBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 688.h,
      child: ListView.separated(
          itemBuilder: (context, index) {
            return SizedBox(width: double.infinity, height: 54.h, child: const SearchSimpleCard());
          },
          separatorBuilder: (context, index) {
            return Padding(padding: EdgeInsets.only(top: 12.h));
          },
          itemCount: 15),
    );
  }
}

class TdkAppBar extends StatelessWidget {
  const TdkAppBar({
    Key? key,
    required this.appBarStatusColor,
    required this.appBarStatusBarBrightness,
  }) : super(key: key);

  final Color appBarStatusColor;
  final Brightness appBarStatusBarBrightness;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: appBarStatusColor, statusBarIconBrightness: appBarStatusBarBrightness),
    );
  }
}

class TdkSvgLogo extends StatelessWidget {
  const TdkSvgLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 40.h,
        width: 85.83.w,
        child: SvgPicture.asset(
          AssetsUtility.tdkLogo,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
