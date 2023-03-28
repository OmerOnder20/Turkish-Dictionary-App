import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../product/utility/assets/assets.dart';
import '../../../../../product/utility/sizes/font_sizes.dart';
import '../../../../../product/widgets/buttons/full_button.dart';
import '../../../../../product/utility/colors/colors.dart';

class DetailHandButton extends StatefulWidget {
  const DetailHandButton({super.key});

  @override
  State<DetailHandButton> createState() => _DetailHandButtonState();
}

class _DetailHandButtonState extends State<DetailHandButton> {
  final String _text = "Türk İşaret Dili";
  bool _isPressed3 = false;

  @override
  Widget build(BuildContext context) {
    return FullButton(
        onTap: () {
          setState(() {
            _isPressed3 = !_isPressed3;
          });
        },
        height: 48,
        width: 156,
        borderRadius: BorderRadius.circular(50.r),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12.w),
              child: SvgPicture.asset(
                AssetsUtility.handIcon,
                color: _isPressed3 ? ColorUtility.tdkMain : ColorUtility.textParagraph2,
                fit: BoxFit.scaleDown,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 12.w),
              child: Text(
                _text,
                style: TextStyle(
                    color: _isPressed3 ? ColorUtility.tdkMain : ColorUtility.textParagraph2,
                    fontSize: FontSizes.font14,
                    fontWeight: FontWeight.w700),
              ),
            )
          ],
        ));
  }
}
