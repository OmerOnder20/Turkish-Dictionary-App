import 'package:flutter/material.dart';
import 'package:tdk_app/product/utility/colors/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../product/utility/sizes/font_sizes.dart';

class DetailExplanation extends StatefulWidget {
  final void Function() onPressed1;
  final void Function() onPressed2;
  final void Function() onPressed3;

  const DetailExplanation({
    super.key,
    required this.onPressed1,
    required this.onPressed2,
    required this.onPressed3,
  });

  @override
  State<DetailExplanation> createState() => _DetailExplanationState();
}

class _DetailExplanationState extends State<DetailExplanation> {
  final String _text1 = "Açıklama";
  final String _text2 = "Atasözleri & Deyimler";
  final String _text3 = "Birleşik Kelimeler";

  bool _isPressed1 = true;
  bool _isPressed2 = false;
  bool _isPressed3 = false;

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
                widget.onPressed1();

                setState(() {
                  _isPressed1 = true;
                  _isPressed2 = false;
                  _isPressed3 = false;
                });
              },
              child: Text(
                _text1,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: FontSizes.font14,
                    color: _isPressed1 ? ColorUtility.textHeading : ColorUtility.textParagraph2),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: TextButton(
                style: TextButton.styleFrom(minimumSize: Size.zero, padding: EdgeInsets.zero),
                onPressed: () {
                  widget.onPressed2();

                  setState(() {
                    _isPressed1 = false;
                    _isPressed2 = true;
                    _isPressed3 = false;
                  });
                },
                child: Text(_text2,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: FontSizes.font14,
                        color: _isPressed2 ? ColorUtility.textHeading : ColorUtility.textParagraph2))),
          ),
          TextButton(
              style: TextButton.styleFrom(minimumSize: Size.zero, padding: EdgeInsets.zero),
              onPressed: () {
                widget.onPressed3();

                setState(() {
                  _isPressed1 = false;
                  _isPressed2 = false;
                  _isPressed3 = true;
                });
              },
              child: Text(_text3,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: FontSizes.font14,
                      color: _isPressed3 ? ColorUtility.textHeading : ColorUtility.textParagraph2))),
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
