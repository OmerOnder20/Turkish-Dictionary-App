// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FullTextField extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String value)? onChanged;
  final void Function()? onTap;
  final TextStyle? style;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? textFieldColor;
  final BorderSide enabledBorderSide;
  final BorderSide focusedBorderSide;
  final BorderRadius borderRadius;
  final List<BoxShadow>? boxShadow;
  final TextInputType? keyBoardType;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? contentPadding;
  const FullTextField({
    Key? key,
    this.style,
    this.hintText,
    this.hintStyle,
    this.suffixIcon,
    required this.prefixIcon,
    this.textFieldColor,
    required this.enabledBorderSide,
    required this.focusedBorderSide,
    required this.borderRadius,
    this.boxShadow,
    this.keyBoardType,
    this.textInputAction,
    required this.controller,
    this.onChanged,
    this.onTap,
    this.focusNode,
    this.contentPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: borderRadius, boxShadow: boxShadow),
      child: TextField(
        focusNode: focusNode,
        onTap: onTap,
        textInputAction: textInputAction,
        keyboardType: keyBoardType,
        onChanged: onChanged,
        controller: controller,
        style: style,
        decoration: InputDecoration(
          contentPadding: contentPadding,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintStyle: hintStyle,
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: borderRadius),
          enabledBorder: OutlineInputBorder(borderSide: enabledBorderSide, borderRadius: borderRadius),
          filled: true,
          fillColor: textFieldColor,
          focusedBorder: OutlineInputBorder(borderSide: focusedBorderSide, borderRadius: borderRadius),
        ),
      ),
    );
  }
}
