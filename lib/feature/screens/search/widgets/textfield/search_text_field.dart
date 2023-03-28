// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:tdk_app/core/widgets/textField/full_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../product/utility/assets/assets.dart';
import '../../../../../product/utility/colors/colors.dart';
import '../../../../../product/utility/constants/string_constants.dart';
import '../../../../../product/utility/sizes/font_sizes.dart';

class SearchTextField extends StatefulWidget {
  final void Function() onTap;
  final void Function() buttonOnPressed;
  final void Function() onChanged;

  const SearchTextField({
    Key? key,
    required this.onTap,
    required this.buttonOnPressed,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final TextEditingController _controller = TextEditingController();

  final focusNode = FocusNode();
  bool _showButton = false;
  bool _showPrefix = true;

  void clearField() {
    setState(() {
      _controller.clear();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 700),
            curve: Curves.fastOutSlowIn,
            height: _showButton ? 48.h : 52.h,
            width: _showButton ? 279.w : 343.w,
            child: FullTextField(
              style: TextStyle(
                  decorationThickness: 0,
                  color: ColorUtility.textHeading,
                  fontSize: FontSizes.font16,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.2),
              contentPadding: EdgeInsets.only(top: 18.h, left: 16),
              focusNode: focusNode,
              onTap: () {
                widget.onTap();
                setState(() {
                  _showButton = true;
                  _showPrefix = false;
                });
              },
              keyBoardType: TextInputType.name,
              hintText: StringConstants.textFieldHintText,
              textFieldColor: ColorUtility.bottomAppBar,
              hintStyle:
                  TextStyle(fontWeight: FontWeight.w400, fontSize: FontSizes.font14, color: ColorUtility.textParagraph),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.25), blurRadius: 24, spreadRadius: 0, offset: const Offset(0, 4))
              ],
              controller: _controller,
              onChanged: (text) {
                widget.onChanged;
                setState(() {});
              },
              suffixIcon: _controller.text.isNotEmpty
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          _controller.clear();
                        });
                      },
                      child: SizedBox(
                          height: 20.h,
                          width: 20.h,
                          child: SvgPicture.asset(
                            AssetsUtility.clearIcon,
                            color: ColorUtility.textParagraph,
                            fit: BoxFit.scaleDown,
                          )),
                    )
                  : const SizedBox.shrink(),
              prefixIcon: _showPrefix
                  ? Padding(
                      padding: EdgeInsets.only(left: 16.w, right: 12.w),
                      child: InkWell(
                        onTap: () {},
                        child: SizedBox(
                            height: 24.h,
                            width: 24.h,
                            child: SvgPicture.asset(
                              AssetsUtility.smallSearchIcon,
                              color: ColorUtility.textParagraph2,
                              fit: BoxFit.scaleDown,
                            )),
                      ),
                    )
                  : null,
              enabledBorderSide: const BorderSide(width: 0, color: Colors.transparent),
              focusedBorderSide: const BorderSide(width: 1, color: ColorUtility.tdkMain),
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          Visibility(
            visible: _showButton,
            child: Padding(
              padding: EdgeInsets.only(left: 13.r),
              child: textButton(
                buttonOnPressed: () {
                  widget.buttonOnPressed();
                  setState(() {
                    _controller.clear();
                    FocusScope.of(context).unfocus();
                    _showButton = false;
                    _showPrefix = true;
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class textButton extends StatelessWidget {
  final void Function() buttonOnPressed;

  const textButton({
    super.key,
    required this.buttonOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(minimumSize: Size.zero, padding: EdgeInsets.zero),
        onPressed: buttonOnPressed,
        child: Text(StringConstants.vazgecText,
            style: TextStyle(
                color: ColorUtility.textHeading,
                fontSize: FontSizes.font14,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal)));
  }
}
