import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tdk_app/product/widgets/buttons/full_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../product/utility/assets/assets.dart';
import '../../../../../product/utility/colors/colors.dart';

class DetailVoiceButton extends StatefulWidget {
  const DetailVoiceButton({super.key});

  @override
  State<DetailVoiceButton> createState() => _DetailVoiceButtonState();
}

class _DetailVoiceButtonState extends State<DetailVoiceButton> {
  bool _isPressed1 = false;
  @override
  Widget build(BuildContext context) {
    return FullButton(
        onTap: () {
          setState(() {
            _isPressed1 = !_isPressed1;
          });
        },
        height: 48,
        width: 48,
        borderRadius: BorderRadius.circular(50.r),
        child: SvgPicture.asset(
          AssetsUtility.voiceIcon,
          color: _isPressed1 ? ColorUtility.tdkMain : ColorUtility.textParagraph2,
          fit: BoxFit.scaleDown,
        ));
  }
}
