import 'package:flutter/material.dart';

import '../../utility/colors/colors.dart';
import '../../utility/sizes/font_sizes.dart';

class FullBottomSheetBarButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final void Function()? onTap;

  const FullBottomSheetBarButton(
      {super.key, required this.height, required this.width, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: InkWell(
        onTap: onTap,
        child: Card(
          elevation: 0,
          margin: EdgeInsets.zero,
          color: ColorUtility.tdkSecondaryButton,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Center(
              child: Text(
            text,
            style: TextStyle(
                letterSpacing: 0.25,
                fontSize: FontSizes.font14,
                fontWeight: FontWeight.w700,
                color: ColorUtility.textHeading),
          )),
        ),
      ),
    );
  }
}
