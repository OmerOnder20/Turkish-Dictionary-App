import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../product/utility/constants/string_constants.dart';
import '../../../../../product/widgets/buttons/full_bottom_sheet_bar_button.dart';

class SearchCommunicationButton extends StatefulWidget {
  const SearchCommunicationButton({super.key});

  @override
  State<SearchCommunicationButton> createState() => _SearchCommunicationButtonState();
}

class _SearchCommunicationButtonState extends State<SearchCommunicationButton> {
  @override
  Widget build(BuildContext context) {
    return FullBottomSheetBarButton(
      height: 48.h,
      width: double.infinity,
      text: StringConstants.iletisimText,
      onTap: () {},
    );
  }
}
