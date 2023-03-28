import 'package:flutter/material.dart';
import 'package:tdk_app/product/utility/colors/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../product/utility/sizes/font_sizes.dart';

class FavouriteExplanation extends StatefulWidget {
  const FavouriteExplanation({super.key});

  @override
  State<FavouriteExplanation> createState() => _FavouriteExplanationState();
}

class _FavouriteExplanationState extends State<FavouriteExplanation> {
  final String _text1 = "Sözcük";
  final String _text2 = "Atasözleri & Deyimler";
  final String _text3 = "Birleşik Kelimeler";

  bool _isPressed7 = true;
  bool _isPressed8 = false;
  bool _isPressed9 = false;

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
                  _isPressed7 = true;
                  _isPressed8 = false;
                  _isPressed9 = false;
                });
              },
              child: Text(
                _text1,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: FontSizes.font14,
                    color: _isPressed7 ? ColorUtility.textHeading : ColorUtility.textParagraph2),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: TextButton(
                style: TextButton.styleFrom(minimumSize: Size.zero, padding: EdgeInsets.zero),
                onPressed: () {
                  setState(() {
                    _isPressed7 = false;
                    _isPressed8 = true;
                    _isPressed9 = false;
                  });
                },
                child: Text(_text2,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: FontSizes.font14,
                        color: _isPressed8 ? ColorUtility.textHeading : ColorUtility.textParagraph2))),
          ),
          TextButton(
              style: TextButton.styleFrom(minimumSize: Size.zero, padding: EdgeInsets.zero),
              onPressed: () {
                setState(() {
                  _isPressed7 = false;
                  _isPressed8 = false;
                  _isPressed9 = true;
                });
              },
              child: Text(_text3,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: FontSizes.font14,
                      color: _isPressed9 ? ColorUtility.textHeading : ColorUtility.textParagraph2))),
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
