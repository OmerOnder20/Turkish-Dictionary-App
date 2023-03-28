import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../product/utility/assets/assets.dart';
import '../../../../../product/widgets/buttons/full_button.dart';
import '../../../../../product/utility/colors/colors.dart';

class DetailFavouriteButton extends StatefulWidget {
  const DetailFavouriteButton({super.key});

  @override
  State<DetailFavouriteButton> createState() => _DetailFavouriteButtonState();
}

class _DetailFavouriteButtonState extends State<DetailFavouriteButton> {
  bool _isPressed2 = false;

  @override
  Widget build(BuildContext context) {
    return FullButton(
        onTap: () {
          setState(() {
            _isPressed2 = !_isPressed2;
          });
        },
        height: 48,
        width: 48,
        borderRadius: BorderRadius.circular(50.r),
        child: SvgPicture.asset(
          AssetsUtility.smallFavouriteIcon,
          color: _isPressed2 ? ColorUtility.tdkMain : ColorUtility.textParagraph2,
          fit: BoxFit.scaleDown,
        ));
  }
}
