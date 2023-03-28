import 'package:flutter/material.dart';

import '../../utility/colors/colors.dart';

class FullButton extends StatelessWidget {
  const FullButton(
      {super.key,
      required this.height,
      required this.width,
      required this.borderRadius,
      required this.child,
      this.onTap});
  final double height;
  final double width;
  final BorderRadius borderRadius;
  final Widget child;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 2,
        color: ColorUtility.containerButton,
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        child: InkWell(onTap: onTap, child: child),
      ),
    );
  }
}
