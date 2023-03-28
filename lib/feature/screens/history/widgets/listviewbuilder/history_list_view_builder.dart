import 'package:flutter/material.dart';
import 'package:tdk_app/product/utility/colors/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../product/utility/sizes/font_sizes.dart';

class HistoryExplanation extends StatefulWidget {
  const HistoryExplanation({super.key});

  @override
  State<HistoryExplanation> createState() => _HistoryExplanationState();
}

class _HistoryExplanationState extends State<HistoryExplanation> {
  final String _text1 = "Sözcük";
  final String _text2 = "Atasözleri & Deyimler";
  final String _text3 = "Birleşik Kelimeler";

  bool _isPressed4 = true;
  bool _isPressed5 = false;
  bool _isPressed6 = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24.h,
      width: 400.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          TextButton(
              style: TextButton.styleFrom(minimumSize: Size.zero, padding: EdgeInsets.zero),
              onPressed: () {
                setState(() {
                  _isPressed4 = true;
                  _isPressed5 = false;
                  _isPressed6 = false;
                });
              },
              child: Text(
                _text1,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: FontSizes.font14,
                    color: _isPressed4 ? ColorUtility.textHeading : ColorUtility.textParagraph2),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: TextButton(
                style: TextButton.styleFrom(minimumSize: Size.zero, padding: EdgeInsets.zero),
                onPressed: () {
                  setState(() {
                    _isPressed4 = false;
                    _isPressed5 = true;
                    _isPressed6 = false;
                  });
                },
                child: Text(_text2,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: FontSizes.font14,
                        color: _isPressed5 ? ColorUtility.textHeading : ColorUtility.textParagraph2))),
          ),
          TextButton(
              style: TextButton.styleFrom(minimumSize: Size.zero, padding: EdgeInsets.zero),
              onPressed: () {
                setState(() {
                  _isPressed4 = false;
                  _isPressed5 = false;
                  _isPressed6 = true;
                });
              },
              child: Text(_text3,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: FontSizes.font14,
                      color: _isPressed6 ? ColorUtility.textHeading : ColorUtility.textParagraph2))),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: TextButton(
                style: TextButton.styleFrom(minimumSize: Size.zero, padding: EdgeInsets.zero),
                onPressed: () {},
                child: Text(
                  "DENEME TEXT",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: FontSizes.font14, color: Colors.red),
                )),
          )
        ],
      ),
    );
  }
}
